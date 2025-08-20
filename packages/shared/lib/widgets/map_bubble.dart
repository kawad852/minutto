import 'package:shared/exports/algolia_exports.dart';
import 'package:shared/shared.dart' hide Marker;

class MapBubble extends StatefulWidget {
  final double zoom;
  final Function(CameraPosition cameraPosition)? onCameraMove;
  final Function(LatLng latLng)? onTap;
  final bool zoomGesturesEnabled;
  final Set<Marker> markers;
  final Set<ClusterManager> clusterManagers;
  final MapController controller;
  final bool showPin;
  final GeoLocModel? geoLoc;

  const MapBubble({
    super.key,
    this.zoom = kMapZoom,
    this.onCameraMove,
    this.onTap,
    this.zoomGesturesEnabled = true,
    this.markers = const {},
    this.clusterManagers = const {},
    required this.controller,
    this.showPin = true,
    this.geoLoc,
  });

  @override
  State<MapBubble> createState() => _MapBubbleState();
}

class _MapBubbleState extends State<MapBubble> {
  late MapController _controller;
  // ignore: unused_field
  bool _loading = true;

  void _toggleLoading() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _toggleLoading();
    _controller = widget.controller;
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(covariant MapBubble oldWidget) {
    if (widget.geoLoc != null &&
        (oldWidget.geoLoc?.lat != widget.geoLoc?.lat ||
            oldWidget.geoLoc?.lng != widget.geoLoc?.lng)) {
      _controller.animateCamera(widget.geoLoc!.lat, widget.geoLoc!.lng);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        GoogleMap(
          clusterManagers: widget.clusterManagers,
          initialCameraPosition: CameraPosition(
            target: LatLng(_controller.latitude, _controller.longitude),
            zoom: widget.zoom,
          ),
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          mapToolbarEnabled: true,
          zoomGesturesEnabled: widget.zoomGesturesEnabled,
          onMapCreated: (GoogleMapController controller) {
            _controller.googleMapCtrl.complete(controller);
          },
          onCameraMove: widget.onCameraMove,
          onTap: widget.onTap,
          markers: widget.markers,
        ),
        if (widget.showPin)
          Padding(
            padding: const EdgeInsets.only(bottom: 36),
            child: Icon(Icons.location_pin, size: 40, color: context.colorScheme.surfaceTint),
          ),

        // if (_loading)
        //   Padding(
        //     padding: const EdgeInsets.all(10),
        //     child: context.loaders.circular(
        //       isSmall: true,
        //       alignment: AlignmentDirectional.topEnd,
        //       color: context.colorScheme.onSurface,
        //     ),
        //   ),
      ],
    );
  }
}
