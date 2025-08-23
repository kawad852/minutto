import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BaseNetworkImage("", width: 60, height: 60, radius: 7),
        const SizedBox(width: 10),
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
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "مصمم جرافيك",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: context.colorPalette.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            context.navigate((context) => const UserDetalisScreen());
          },
          child: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
