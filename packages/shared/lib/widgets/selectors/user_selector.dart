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
    if (deliveryAddressBuilder != null) {
      return Selector<UserModel, AddressModel?>(
        selector: (context, provider) => provider.deliveryAddress,
        builder: (context, deliveryAddress, _) {
          return deliveryAddressBuilder!(context, deliveryAddress);
        },
      );
    } else if (recentSearchesBuilder != null) {
      return Selector<UserModel, List<String>>(
        selector: (context, provider) => provider.recentSearches,
        builder: (context, value, _) {
          return recentSearchesBuilder!(context, value);
        },
      );
    } else {
      return Selector<UserModel, UserModel>(
        selector: (context, provider) => provider,
        builder: (context, user, _) {
          return builder!(context, user);
        },
      );
    }
  }
}
