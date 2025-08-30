import 'package:shared/shared.dart';

class BranchCard extends StatelessWidget {
  const BranchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: context.colorPalette.grey718,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "فرع عمان",
            style: style,
          ),
          Row(
            spacing: 6,
            children: [
              const CustomSvg(MyIcons.call),
              Text(
                "0765555555",
                style: style,
              ),
            ],
          ),
          Row(
            spacing: 6,
            children: [
              const CustomSvg(MyIcons.sms),
              Text(
                "Example@gmail.com",
                style: style,
              ),
            ],
          ),
          Row(
            spacing: 6,
            children: [
              const CustomSvg(MyIcons.loc),
              Text(
                "السعودية",
                style: style,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: context.colorPalette.greyABB,
              border: Border.all(color: context.colorPalette.greyE9E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              spacing: 10,
              children: [
                const CustomSvg(MyIcons.clock),
                Expanded(
                  child: Text(
                    "9:00 ص : 06:00 ص",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                CustomSwitch(
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
