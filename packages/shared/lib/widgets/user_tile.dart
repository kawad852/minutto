import '../shared.dart';

class UserTile extends StatelessWidget {
  final UserModel user;

  const UserTile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        BaseNetworkImage(
          user.profileImage,
          width: 50,
          height: 50,
          shape: BoxShape.circle,
        ),
        Expanded(
          child: Column(
            spacing: 5,
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
                style: TextStyle(
                  color: context.colorPalette.blue475,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
