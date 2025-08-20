import 'dart:developer';

import '../shared.dart' hide Client;
import '../typesense.dart';

class TypeSenseService {
  static late Client client;

  static void init() {
    final config = Configuration(
      's5VDYlg7C8g4dtaOQvtwZg2DcOmjYTce',
      nodes: {
        Node(
          Protocol.https, // For Typesense Cloud use https
          "eiwdpng9v1l6z2x0p-1.a1.typesense.net", // For Typesense Cloud use xxx.a1.typesense.net
          port: 443, // For Typesense Cloud use 443
        ),
      },
      connectionTimeout: Duration(seconds: 2),
    );
    client = Client(config);
  }

  static Map<String, dynamic> _getRequest(SearchRequestModel searchRequest) {
    return {
      if (searchRequest.collection.isNotEmpty) 'collection': searchRequest.collection,
      'q': searchRequest.q,
      if (searchRequest.queryBy != null) 'query_by': searchRequest.queryBy,
      if (searchRequest.facetBy != null) 'facet_by': searchRequest.facetBy,
      if (searchRequest.filters.isNotEmpty)
        'filter_by': searchRequest.filters.map((e) => e.value).join(' && '),
      if (searchRequest.vectorQuery != null) 'vector_query': searchRequest.vectorQuery,
      // 'sort_by': 'num_employees:desc',
    };
  }

  static Future<ResultsModel> search({required SearchRequestModel searchRequest}) async {
    final searchParameters = _getRequest(searchRequest);
    print("searchParameters:: $searchParameters");
    try {
      final results = await client
          .collection(searchRequest.collection)
          .documents
          .search(searchParameters);

      log("results:: $results");

      return ResultsModel.fromJson(Map<String, dynamic>.from(results));
    } catch (e) {
      log("typesenseException::: $e");
      throw Exception();
    }
  }

  static Future<MultiResultsModel> multiSearch(
    List<SearchRequestModel> searchRequests, {
    Map<String, String>? queryParams,
  }) async {
    final searchParameters = {
      "searches": searchRequests.map((e) {
        return _getRequest(e);
      }).toList(),
    };
    try {
      final results = await client.multiSearch.perform(searchParameters, queryParams: queryParams);
      return MultiResultsModel.fromJson(Map<String, dynamic>.from(results));
    } catch (e) {
      log("typesenseException::: $e");
      throw Exception();
    }
  }
}
