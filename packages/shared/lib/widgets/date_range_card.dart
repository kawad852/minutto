import 'package:shared/shared.dart';

class DateRangeCard extends StatelessWidget {
  const DateRangeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: context.colorPalette.grey919),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "12 مارس 2023 - 12 يوليو 2025",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: context.colorPalette.blue475,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          CustomSvg(
            MyIcons.calander,
            color: context.colorPalette.black,
          ),
        ],
      ),
    );
  }
}
