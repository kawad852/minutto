import 'package:algolia_insights/algolia_insights.dart';

import '../../shared.dart';

class InsightsService {
  static final insights = Insights(applicationID: kAlgoliaApplicationId, apiKey: kAlgoliaApiKey);

  static void init() {
    insights.userToken = MySharedPreferences.user?.userToken ?? MySharedPreferences.userToken;
  }

  static void clickedObjectsAfterSearch({
    required String indexName,
    required String eventName,
    required String? queryID,
    required List<String> objectIDs,
    required List<int> positions,
  }) {
    if (queryID != null) {
      insights.clickedObjectsAfterSearch(
        indexName: indexName,
        eventName: eventName,
        queryID: queryID,
        objectIDs: objectIDs,
        positions: positions,
      );
    }
  }

  static void clickedFilters({
    required String indexName,
    required String attribute,
    required List<String> values,
  }) {
    insights.clickedFilters(
      indexName: indexName,
      eventName: InsightsEnum.filterClicked.value,
      attribute: attribute,
      values: values,
    );
  }
}
