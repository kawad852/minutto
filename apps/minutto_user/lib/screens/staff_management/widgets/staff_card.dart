import 'package:shared/shared.dart';

class StaffCard extends StatelessWidget {
  final UserModel user;

  const StaffCard({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final branch = user.branch;
    final department = user.department;
    final style = TextStyle(
      color: context.colorPalette.blue475,
      fontSize: 12,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        border: Border.all(color: context.colorPalette.greyEAE),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        spacing: 10,
        children: [
          BaseNetworkImage(
            user.profileImage,
            width: 50,
            height: 50,
            shape: BoxShape.circle,
          ),
          Expanded(
            flex: 3,
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  user.jobTitle,
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
                Text(
                  department.name,
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.appLocalization.branch,
                  style: style,
                ),
                Text(
                  branch.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.green19B,
                    fontSize: 16,
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
