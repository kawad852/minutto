import 'dart:math' as Math;

import 'package:flutter/services.dart';

import '../shared.dart';

class VertexAiService {
  Future<AuthClient> _getAuthHttpClient() async {
    // Load the service account JSON from the assets folder
    final String serviceAccountString = await rootBundle.loadString('assets/service-account.json');

    // Parse the JSON string into a Map
    final serviceAccountJson = jsonDecode(serviceAccountString);

    final serviceAccountCredentials = ServiceAccountCredentials.fromJson(serviceAccountJson);
    final client = clientViaServiceAccount(serviceAccountCredentials, [
      VertexAIGenAIClient.cloudPlatformScope,
    ]);
    return client;
  }

  Future<List<double>> generateEmbeddings(
    BuildContext context, {
    required String title,
    required String content,
  }) async {
    return ApiService.build<List<double>>(
      callBack: () async {
        final vertexAi = VertexAIGenAIClient(
          httpClient: await _getAuthHttpClient(),
          project: "project-zac",
        );
        final res = await vertexAi.textEmbeddings.predict(
          model: "gemini-embedding-001",
          content: [
            VertexAITextEmbeddingsModelContent(
              taskType: VertexAITextEmbeddingsModelTaskType.retrievalDocument,
              title: title,
              content: content,
            ),
          ],
        );
        final vector = res.predictions.first.values;
        final norm = l2norm(vector);
        // kFirebaseInstant.products.doc();
        print("norm: ${norm.length}");
        return norm;
      },
    );
  }

  List<double> l2norm(List<double> v) {
    final sumSq = v.fold<double>(0, (s, x) => s + x * x);
    final mag = sumSq == 0 ? 1.0 : Math.sqrt(sumSq);
    return v.map((x) => x / mag).toList(growable: false);
  }

  void test(BuildContext context) async {
    final ids = ["product_82", "product_78", "product_31"];
    for (var id in ids) {
      final product = await kFirebaseInstant.products.doc(id).get();
      final embedding = await generateEmbeddings(
        context,
        title: product.data()!.nameEn,
        content: product.data()!.descriptionEn,
      );
      kFirebaseInstant.products.doc(id).update({"embedding": embedding});
    }
  }
}
