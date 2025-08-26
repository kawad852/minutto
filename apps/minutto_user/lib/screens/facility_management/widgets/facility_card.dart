import 'package:shared/shared.dart';

class FacilityCard extends StatelessWidget {
  final void Function() onTap;
  final String title;
  const FacilityCard({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 7),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.colorPalette.greyF9F,
            border: Border.all(color: context.colorPalette.greyEAE),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
