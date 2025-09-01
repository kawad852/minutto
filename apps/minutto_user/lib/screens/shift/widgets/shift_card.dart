import 'package:shared/shared.dart';

class ShiftCard extends StatelessWidget {
  const ShiftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        border: Border.all(color: context.colorPalette.greyEAE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 5,
        children: [
          BaseNetworkImage(
            "",
            width: 50,
            height: 50,
            shape: BoxShape.circle,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "صهيب البكار",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "مصمم جرافيك",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.blue475,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 0),
              itemCount: 4,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomRadio<bool>(
                  value: true,
                  groupValue: true,
                  title: "شفت اساسي",
                  onChanged: (value) {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
