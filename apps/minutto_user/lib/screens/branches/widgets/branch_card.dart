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
          Row(
            children: [
              Expanded(
                child: Text(
                  "فرع عمان",
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const CustomSvg(MyIcons.menu),
              ),
            ],
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
        ],
      ),
    );
  }
}
