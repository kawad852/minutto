import 'package:shared/shared.dart';

class AdvanceBubble extends StatelessWidget {
  const AdvanceBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF7F,
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.appLocalization.requests,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "0/1",
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  context.appLocalization.monthly,
                  style: TextStyle(
                    color: context.colorPalette.grey8F8,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          CustomLine(
            color: context.colorPalette.black,
            isEnd: true,
            isVertical: true,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.appLocalization.ceiling,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "%30",
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  context.appLocalization.fromTheBasicSalary,
                  style: TextStyle(
                    color: context.colorPalette.grey8F8,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
