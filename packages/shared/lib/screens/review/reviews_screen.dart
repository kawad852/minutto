import 'package:shared/shared.dart';

class ReviewsScreen extends StatefulWidget {
  final String? storeId, productId;

  const ReviewsScreen({super.key, this.storeId, this.productId});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  late Query<ReviewModel> _reviewsQuery;

  void _initializeReviewsFuture() {
    late CollectionReference<ReviewModel> reference;
    final filter = Filter.and(
      Filter(MyFields.published, isEqualTo: true),
      Filter(MyFields.comment, isNull: false),
    );
    if (widget.storeId != null) {
      reference = getIt<FirebaseFirestore>().storesReviews(widget.storeId!);
    } else {
      reference = getIt<FirebaseFirestore>().productsReviews(widget.productId!);
    }
    _reviewsQuery = reference.where(filter).orderByCreatedAtDesc;
  }

  @override
  void initState() {
    super.initState();
    _initializeReviewsFuture();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text(context.appLocalization.reviews),
        centerTitle: false,
      ),
      body: FirePaginator(
        query: _reviewsQuery,
        builder: (context, snapshot) {
          if (snapshot.docs.isEmpty) {
            return const SizedBox.shrink();
          }
          return ListView.separated(
            itemCount: snapshot.docs.length,
            padding: const EdgeInsets.all(kScreenMargin),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              if (snapshot.isLoadingMore(index)) {
                return const FPLoading();
              }
              final review = snapshot.docs[index].data();
              return ReviewCard(review: review);
            },
          );
        },
      ),
    );
  }
}
