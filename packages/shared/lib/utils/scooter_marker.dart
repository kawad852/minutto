import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared/extensions/base_extension.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

import '../exports/algolia_exports.dart';

class ScooterMarker {
  static late Marker icon;

  static void init(BuildContext context) async {
    const size = 450.0;
    icon = Marker(
      markerId: const MarkerId("custom-marker"),
      icon: await CircleAvatar(
        radius: 60,
        backgroundColor: context.colorScheme.onSurfaceVariant,
        child: FaIcon(
          FontAwesomeIcons.lightMoped,
          size: 50,
          color: context.colorScheme.surfaceContainer,
        ),
      ).toBitmapDescriptor(logicalSize: const Size(size, size), imageSize: const Size(size, size)),
    );
  }
}
