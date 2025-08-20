import 'package:algolia_client_recommend/algolia_client_recommend.dart';

import '../../shared.dart';

class RecommendService {
  final client = RecommendClient(
    appId: kAlgoliaApplicationId,
    apiKey: kAlgoliaApiKey,
  );

  Future<GetRecommendationsResponse> getRelatedItems(List<String> ids) async {
    var requests = ids.map((e) {
      return RelatedQuery(
        model: RelatedModel.relatedProducts,
        objectID: e,
        indexName: AlgoliaIndices.products.value,
        threshold: 10,
        maxRecommendations: 30,
      );
    });

    final response = await client.getRecommendations(
      getRecommendationsParams: GetRecommendationsParams(requests: requests),
    );

    // printRecommendations(response);

    client.dispose();

    return response;
  }

  // /// Prints the search hits.
  // void printRecommendations(GetRecommendationsResponse response) {
  //   final results = response.results;
  //
  //   // Loop over each result and map over the search hits,
  //   // converting each hit to a product.
  //
  //   for (final result in results) {
  //     final hits = result.hits;
  //     for (var h in hits) {
  //       print("name:: ${h['nameEn']}");
  //     }
  //   }
  // }
}
