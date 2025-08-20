import '../../shared.dart';

class ShareButton extends StatelessWidget {
  final String id;
  final String type;
  final String name;
  final String description;

  const ShareButton({
    super.key,
    required this.id,
    required this.type,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        DeepLinkingService.share(
          context,
          id: id,
          type: type,
          title: name,
          description: description,
          // extra: {
          //   'userId': job.userId,
          // },
          imageURL: '',
        );
      },
      icon: Icon(FontAwesomeIcons.lightShare),
    );
  }
}
