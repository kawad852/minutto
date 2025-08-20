import '../../shared.dart';

class LocationSelector extends StatelessWidget {
  final Widget Function(BuildContext, bool) builder;

  const LocationSelector({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return Selector<LocationProvider, bool>(
      selector: (context, provider) => provider.isLocationGranted,
      builder: (context, user, _) {
        return builder(context, user);
      },
    );
  }
}
