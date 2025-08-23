import 'package:shared/shared.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final Widget child;
  const ProfileCard({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: context.colorPalette.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          decoration: BoxDecoration(
            border: Border.all(color: context.colorPalette.greyE1D),
            borderRadius: BorderRadius.circular(kRadiusSecondary),
          ),
          child: child,
        ),
      ],
    );
  }
}
