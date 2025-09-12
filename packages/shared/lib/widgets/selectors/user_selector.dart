import '../../shared.dart';

class UserSelector extends StatelessWidget {
  final Widget Function(BuildContext, UserModel user)? builder;

  const UserSelector({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return Selector<UserModel, UserModel>(
      selector: (context, provider) => provider,
      builder: (context, user, _) {
        return builder!(context, user);
      },
    );
  }
}
