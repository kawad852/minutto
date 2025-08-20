import 'package:shared/shared.dart';

class RatingInfoWidget extends StatelessWidget {
  final RatingModel? rating;
  final VoidCallback? onPressed;

  const RatingInfoWidget({super.key, required this.rating, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final average = rating?.average ?? 0;
    final count = rating?.count ?? 0;
    final isNew = count == 0;
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: onPressed != null ? context.colorScheme.surfaceContainer : null,
      elevation: 0,
      highlightElevation: 0,
      focusElevation: 0,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: onPressed != null
          ? EdgeInsetsDirectional.symmetric(horizontal: 5)
          : EdgeInsetsGeometry.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      constraints: BoxConstraints(minWidth: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(FontAwesomeIcons.solidStar, size: 12, color: context.colorScheme.primary),
          const SizedBox(width: 2),
          if (isNew)
            Text(context.appLocalization.newKey)
          else ...[
            Text(average.toStringAsFixed(1)),
            Text(
              " ($count)",
              style: context.textTheme.bodyMedium!.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
