import 'package:flutter/foundation.dart';

import '../../shared.dart';

class LocationProvider extends ChangeNotifier {
  double? latitude;
  double? longitude;

  bool get isLocationGranted => latitude != null && longitude != null;

  Future<GeoLocationModel?> determinePosition(
    BuildContext context, {
    Function()? onPermissionGranted,
    bool showSnackBar = false,
    bool withOverLayLoader = false,
  }) async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      if (withOverLayLoader) {
        AppOverlayLoader.show();
      }

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled && context.mounted && showSnackBar) {
        _showLocationErrorBanner(context);
        return null;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          if (context.mounted && showSnackBar) {
            _showLocationErrorBanner(context);
          }
          return null;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        if (context.mounted && showSnackBar) {
          _showLocationErrorBanner(context);
        }
        return null;
      }

      // ignore: deprecated_member_use
      final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;
      notifyListeners();
      debugPrint("Position:: Latitude:: $latitude Longitude:: $longitude");
      if (onPermissionGranted != null) {
        print("9823y1r9813yr");

        onPermissionGranted();
      }
      return GeoLocationModel(
        latitude: latitude!,
        longitude: longitude!,
      );
    } catch (e) {
      debugPrint("PositionError:: $e");
      return null;
    } finally {
      if (withOverLayLoader) {
        AppOverlayLoader.hide();
      }
    }
  }

  void _showLocationErrorBanner(BuildContext context) {
    context.showSnackBar(
      context.appLocalization.locationServiceDisabledMsg,
      action: !kIsWeb
          ? SnackBarAction(
              label: context.appLocalization.enable,
              onPressed: () {
                Geolocator.openLocationSettings();
              },
            )
          : null,
    );
  }
}
