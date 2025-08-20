import 'package:shared/exports/e.dart';
import 'package:shared/shared.dart';

class RecommendBuilder extends StatefulWidget {
  final List<String> ids;

  const RecommendBuilder({super.key, required this.ids});

  @override
  State<RecommendBuilder> createState() => _RecommendBuilderState();
}

class _RecommendBuilderState extends State<RecommendBuilder> {
  final _recommendService = RecommendService();
  late Future<GetRecommendationsResponse> _future;

  void _initialize() {
    _future = _recommendService.getRelatedItems(widget.ids);
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.future(
      future: _future,
      onComplete: (context, snapshot) {
        final hits = snapshot.data!.results.expand((result) => result.hits).toList();
        if (hits.isEmpty) {
          return SizedBox.shrink();
        }
        final products = hits.map((e) => ProductModel.fromJson(e)).toList();
        return Column(
          children: [
            HeaderTile(titleText: context.appLocalization.moreForYou),
            SizedBox(
              height: 250,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                padding: EdgeInsets.symmetric(horizontal: kScreenMargin),
                itemCount: hits.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return SizedBox(
                    width: 200,
                    child: ProductCard(product: product, storeId: "0", onCLick: () {}),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
