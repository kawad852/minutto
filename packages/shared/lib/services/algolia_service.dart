// import 'package:algoliasearch/algoliasearch.dart' as algSearch;

import 'package:algoliasearch/algoliasearch.dart';

import '../exports/algolia_exports.dart';
import '../shared.dart' hide SearchClient;
import '../shared_2.dart' hide SearchResponse;

class AlgoliaService {
  final String _userToken = MySharedPreferences.userToken;

  FacetSearcher getFacetsSearcher(String indexName, String facet) => FacetSearcher(
    applicationID: kAlgoliaApplicationId,
    apiKey: kAlgoliaApiKey,
    indexName: indexName,
    facet: facet,
  );

  HitsSearcher getHintSearcher(String indexName) => HitsSearcher(
    applicationID: kAlgoliaApplicationId,
    apiKey: kAlgoliaApiKey,
    indexName: indexName,
    insights: true,
  );

  SearchClient get kAlgoliaClient =>
      SearchClient(appId: kAlgoliaApplicationId, apiKey: kAlgoliaApiKey);

  Future<SearchResponse> search(
    BuildContext context, {
    String? query,
    required String indexName,
    LatLng? latLng,
    int? hitsPerPage,
    String? facetFilters,
  }) {
    final isFoodStore = indexName == AlgoliaIndices.foodStores.value;
    return kAlgoliaClient.searchIndex(
      request: SearchForHits(
        indexName: indexName,
        query: query,
        userToken: _userToken,
        enablePersonalization: true,
        hitsPerPage: hitsPerPage,
        clickAnalytics: true,
        analytics: true,
        facetFilters: facetFilters,
        aroundRadius: isFoodStore ? 12000 : null,
        aroundLatLng: latLng != null
            ? "${latLng.latitude}, ${latLng.longitude}"
            : isFoodStore
            ? '32.066172295198214, 36.05244362070307'
            : null,
      ),
    );
  }

  SearchState getSearchSate(
    BuildContext context,
    String indexName, {
    String? aroundRadius,
    String? aroundLatLng,
    String? query,
    List<String>? numericFilters,
    List<String>? facetFilters,
    List<String>? tagFilters,
  }) => SearchState(
    indexName: indexName,
    aroundRadius: aroundRadius,
    aroundLatLng: aroundLatLng,
    hitsPerPage: 10,
    userToken: _userToken,
    clickAnalytics: true,
    analytics: true,
    numericFilters: numericFilters,
    facetFilters: facetFilters,
    tagFilters: tagFilters,
    query: query,
  );

  MultiSearcher get getMultiSearcher => MultiSearcher(
    applicationID: kAlgoliaApplicationId,
    apiKey: kAlgoliaApiKey,
    eventTracker: InsightsService.insights,
  );
}
