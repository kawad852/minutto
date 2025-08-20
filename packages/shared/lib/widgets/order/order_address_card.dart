import 'package:shared/shared.dart';

class OrderAddressCard extends StatefulWidget {
  final AddressModel address;
  final Widget? trailing;
  final bool showMap;

  const OrderAddressCard({super.key, required this.address, this.trailing, this.showMap = true});

  @override
  State<OrderAddressCard> createState() => _OrderAddressCardState();
}

class _OrderAddressCardState extends State<OrderAddressCard> {
  late MapController _mapController;

  AddressModel get _address => widget.address;

  @override
  void initState() {
    super.initState();
    _mapController = MapController(context, lat: _address.latitude, lng: _address.longitude);
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const radius = kRadiusSecondary;
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: context.colorScheme.surfaceContainerHigh),
        ),
        child: Column(
          children: [
            if (widget.showMap)
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                    vertical: 1,
                  ).copyWith(bottom: 0),
                  child: MapBubble(controller: _mapController, zoomGesturesEnabled: false),
                ),
              ),
            ListTile(
              dense: true,
              tileColor: context.variantPrimary,
              minTileHeight: 0,
              shape: RoundedRectangleBorder(
                borderRadius: widget.showMap
                    ? BorderRadius.vertical(bottom: Radius.circular(radius))
                    : BorderRadius.circular(radius),
              ),
              leading: const Icon(FontAwesomeIcons.lightLocationDot),
              title: Text(context.appLocalization.deliveryAddress),
              subtitle: Text(
                '${_address.area} ${_address.streetName != null ? ', ${_address.streetName}' : ''}',
              ),
              trailing: widget.trailing,
            ),
          ],
        ),
      ),
    );
  }
}
