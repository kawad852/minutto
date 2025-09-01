import 'package:dotted_border/dotted_border.dart';
import 'package:shared/shared.dart';

class AttachCard extends StatelessWidget {
  const AttachCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: DottedBorder(
        options: RectDottedBorderOptions(
          color: context.colorPalette.blueB2D,
          strokeWidth: 2,
          dashPattern: [10, 10],
        ),
        child: Container(
          width: double.infinity,
          height: 110,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: context.colorPalette.greyF9F,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            spacing: 10,
            children: [
              const CustomSvg(MyIcons.attachIcon),
              Text(
                context.appLocalization.attachFilehere,
                style: TextStyle(
                  color: context.colorPalette.blue091,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Jpg, Png, Pdf (${context.appLocalization.max} MB3 )",
                style: TextStyle(
                  color: context.colorPalette.blue091,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
