import '../../shared.dart';

class ProviderLogo extends StatelessWidget {
  final String imageURL;

  const ProviderLogo(this.imageURL, {super.key});

  @override
  Widget build(BuildContext context) {
    return BaseNetworkImage(
      imageURL,
      width: 75,
      height: 75,
      radius: kRadiusSecondary,
      margin: EdgeInsetsDirectional.only(end: 10),
    );
  }
}
