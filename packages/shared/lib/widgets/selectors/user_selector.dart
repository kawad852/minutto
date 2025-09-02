import '../../shared.dart';

class UserSelector extends StatelessWidget {
  final Widget Function(BuildContext, UserModel user)? builder;
  final Widget Function(BuildContext, AddressModel? address)? deliveryAddressBuilder;
  final Widget Function(BuildContext, List<String> recentSearches)? recentSearchesBuilder;

  const UserSelector({super.key, required this.builder})
    : deliveryAddressBuilder = null,
      recentSearchesBuilder = null;

  const UserSelector.deliveryAddress({super.key, required this.deliveryAddressBuilder})
    : builder = null,
      recentSearchesBuilder = null;

  const UserSelector.recentSearches({super.key, required this.recentSearchesBuilder})
    : builder = null,
      deliveryAddressBuilder = null;

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
