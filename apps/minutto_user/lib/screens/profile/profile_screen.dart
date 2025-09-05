import 'package:minutto_user/main.dart';
import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.profile)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          UserCard(),
          const SizedBox(height: 35),
          ProfileCard(
            title: context.appLocalization.applicationSettings,
            child: Column(
              children: [
                ProfileInfo(
                  onTap: () {},
                  icon: MyIcons.language,
                  title: context.appLocalization.changeLanguage,
                ),
                CustomLine(),
                ProfileInfo(
                  onTap: () {},
                  icon: MyIcons.moon,
                  title: context.appLocalization.nightMode,
                ),
              ],
            ),
          ),
          ProfileCard(
            title: context.appLocalization.aboutTheCompany,
            child: Column(
              children: [
                ProfileInfo(
                  onTap: () {},
                  icon: MyIcons.bylaws,
                  title: context.appLocalization.bylaws,
                ),
                CustomLine(),
                ProfileInfo(
                  onTap: () {},
                  icon: MyIcons.people,
                  title: context.appLocalization.leaveDepartureSystem,
                ),
                CustomLine(),
                ProfileInfo(
                  onTap: () {
                    context.navigate((context) => const FAQScreen());
                  },
                  icon: MyIcons.questions,
                  title: context.appLocalization.faq,
                ),
              ],
            ),
          ),
          ProfileCard(
            title: context.appLocalization.aboutTheApplication,
            child: Column(
              children: [
                ProfileInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const PrivacyScreen(privacyType: PrivacyType.policy),
                    );
                  },
                  icon: MyIcons.policy,
                  title: context.appLocalization.privacyPolicy,
                ),
                CustomLine(),
                ProfileInfo(
                  onTap: () {
                    context.navigate(
                      (context) => const PrivacyScreen(privacyType: PrivacyType.app),
                    );
                  },
                  icon: MyIcons.book,
                  title: context.appLocalization.whoAreWe,
                ),
                CustomLine(),
                ProfileInfo(
                  onTap: () {
                    context.userProvider.logout(context, builder: kLogoutBuilder);
                  },
                  icon: MyIcons.logout,
                  title: context.appLocalization.logOut,
                  color: context.colorPalette.redD42,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
