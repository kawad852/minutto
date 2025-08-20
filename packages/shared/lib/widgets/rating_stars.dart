import '../../shared.dart';

class RatingStars extends StatelessWidget {
  final double initialRating;
  final Function(double)? onRatingUpdate;
  final double size;

  const RatingStars({super.key, required this.initialRating, this.onRatingUpdate, this.size = 25});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 1,
      ignoreGestures: onRatingUpdate == null,
      direction: Axis.horizontal,
      itemCount: 5,
      glow: false,
      itemSize: size,
      allowHalfRating: false,
      itemBuilder: (context, _) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 8),
        child: Icon(FontAwesomeIcons.solidStar, color: context.colorScheme.primary),
      ),
      onRatingUpdate: onRatingUpdate != null ? onRatingUpdate! : (value) {},
    );
  }
}
