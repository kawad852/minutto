import 'package:shared/shared.dart';

class BranchCard extends StatelessWidget {
  final BranchModel branch;

  const BranchCard({
    super.key,
    required this.branch,
  });

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
            branch.name,
            overflow: TextOverflow.ellipsis,
            style: style,
          ),
          Row(
            spacing: 6,
            children: [
              const CustomSvg(MyIcons.call),
              Text(
                branch.getPhoneNumber(context)!,
                style: style,
              ),
            ],
          ),
          Row(
            spacing: 6,
            children: [
              const CustomSvg(MyIcons.sms),
              Text(
                branch.email,
                style: style,
              ),
            ],
          ),
          Row(
            spacing: 6,
            children: [
              const CustomSvg(MyIcons.loc),
              Text(
                branch.cityId,
                style: style,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
