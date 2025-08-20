import 'package:shared/shared.dart';

class ReviewCard extends StatelessWidget {
  final ReviewModel review;

  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.colorScheme.surfaceContainer,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadiusSecondary)),
      title: Row(
        children: [
          if (review.firstName.isNotEmpty)
            Expanded(
              child: Text(
                review.firstName,
                style: context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: RatingStars(initialRating: review.stars, size: 20),
          ),
        ],
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (review.comment != null)
            Expanded(child: Text(review.comment!, style: context.textTheme.bodyLarge)),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 4),
            child: Text(review.createdAt!.yMMMMd, style: context.textTheme.labelSmall!),
          ),
        ],
      ),
    );
  }
}
