import '../models/facet/facet_model.dart';
import '../shared.dart';
import '../shared_2.dart';

class FilterHelper {
  List<UnifiedFacet> generateUnifiedFacets({
    required Map<String, List<Facet>> algoliaFacets,
    required Map<String, Map<String, num>> algoliaFacetStats,
    required Map<String, dynamic> renderingContent,
    required Map<String, FacetData> firestoreFacets,
  }) {
    final List<UnifiedFacet> result = [];

    final orderedAttributes = List<String>.from(
      renderingContent['facetOrdering']?['facets']?['order'] ?? [],
    );

    final pinnedAttributes = firestoreFacets.entries
        .where((e) => e.value.pinned)
        .map((e) => e.key)
        .toList();

    for (int i = 0; i < orderedAttributes.length; i++) {
      final attribute = orderedAttributes[i];

      final fireFacet = firestoreFacets[attribute];
      final facetLabel = fireFacet?.name ?? attribute;

      final valuesFromAlgolia = algoliaFacets[attribute] ?? [];
      final fireFacetValues = fireFacet?.values ?? {};

      final facetValues = <UnifiedFacetValue>[];

      for (final facet in valuesFromAlgolia) {
        final valKey = facet.value;
        final fireVal = fireFacetValues[valKey];

        facetValues.add(
          UnifiedFacetValue(value: valKey, name: fireVal?.name ?? valKey, count: facet.count),
        );
      }

      FacetStats? stats;
      final algoliaStats = algoliaFacetStats[attribute];
      if (algoliaStats != null) {
        stats = FacetStats(
          min: algoliaStats['min']!.toDouble(),
          max: algoliaStats['max']!.toDouble(),
          avg: algoliaStats['avg']!.toDouble(),
          sum: algoliaStats['sum']!.toDouble(),
        );
      }

      result.add(
        UnifiedFacet(
          attribute: attribute,
          name: facetLabel,
          order: i,
          pinned: pinnedAttributes.contains(attribute),
          values: facetValues,
          stats: stats,
        ),
      );
    }

    return result;
  }
}

List<UnifiedFacet> buildUnifiedFacets({
  required List<FacetModel> typesenseFacets,
  required FacetDocumentModel fs,
  Map<String, String> attributeAliases = const {}, // e.g. {'brand.id':'brandId'}
}) {
  // --- helpers ---------------------------------------------------------------

  FacetData? facetCfgFor(String attribute) {
    // direct hit
    final direct = fs.facets[attribute];
    if (direct != null) return direct;

    // explicit alias mapping
    final alias = attributeAliases[attribute];
    if (alias != null && fs.facets[alias] != null) return fs.facets[alias];

    // brand.id -> brandId
    if (attribute.endsWith('.id')) {
      final candidate = attribute.replaceAll('.id', 'Id');
      final hit = fs.facets[candidate];
      if (hit != null) return hit;
    }

    // brand.id -> id (last segment)
    final last = attribute.split('.').last;
    final byLast = fs.facets[last];
    if (byLast != null) return byLast;

    return null; // no translation config; we’ll fall back to raw
  }

  String facetName(FacetData? cfg, String fallback) {
    final n = cfg?.name ?? '';
    return n.isEmpty ? fallback : n;
  }

  String valueName(FacetData? cfg, String raw) {
    final v = cfg?.values[raw];
    final n = v?.name ?? '';
    return n.isEmpty ? raw : n;
  }

  FacetStats? mapStats(FacetStats? s) {
    if (s == null) return null;
    // Only the numeric fields are needed by U.FacetStats
    final hasAny = (s.min != 0.0) || (s.max != 0.0) || (s.avg != 0.0) || (s.sum != 0.0);
    if (!hasAny) return null;
    return FacetStats(min: s.min, max: s.max, avg: s.avg, sum: s.sum);
  }

  // --- build ----------------------------------------------------------------

  final List<UnifiedFacet> out = [];

  for (var i = 0; i < typesenseFacets.length; i++) {
    final ts = typesenseFacets[i];
    final attribute = ts.fieldName;
    if (attribute.isEmpty) continue;

    final cfg = facetCfgFor(attribute);
    final name = facetName(cfg, attribute);
    final order = (cfg?.order ?? i); // fallback to Typesense order
    final pinned = cfg?.pinned ?? false;

    final values = ts.counts.map((c) {
      final raw = c.value;
      return UnifiedFacetValue(
        value: raw, // token to send back to TS
        name: valueName(cfg, raw), // translated label (or raw)
        count: c.count,
      );
    }).toList();

    out.add(
      UnifiedFacet(
        attribute: attribute,
        name: name,
        order: order,
        pinned: pinned,
        values: values,
        stats: mapStats(ts.stats),
      ),
    );
  }

  // sort by order, then name for stability
  out.sort((a, b) {
    final byOrder = a.order.compareTo(b.order);
    return byOrder != 0 ? byOrder : a.name.compareTo(b.name);
  });

  return out;
}
