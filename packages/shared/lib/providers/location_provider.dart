import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../shared.dart';

class LocationProvider extends ChangeNotifier {
  var latitude = MySharedPreferences.location?.latitude;
  var longitude = MySharedPreferences.location?.longitude;

  bool get isLocationGranted => latitude != null && longitude != null;

  Future<void> determinePosition(
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
        return;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          if (context.mounted && showSnackBar) {
            _showLocationErrorBanner(context);
          }
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        if (context.mounted && showSnackBar) {
          _showLocationErrorBanner(context);
        }
        return;
      }

      // ignore: deprecated_member_use
      final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;
      MySharedPreferences.location = LatLng(latitude!, longitude!);
      notifyListeners();
      debugPrint("Position:: Latitude:: $latitude Longitude:: $longitude");
      if (onPermissionGranted != null) {
        onPermissionGranted();
      }
    } catch (e) {
      debugPrint("PositionError:: $e");
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
