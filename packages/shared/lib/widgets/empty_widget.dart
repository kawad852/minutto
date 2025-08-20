import '../../shared.dart';

class EmptyWidget extends StatelessWidget {
  final IconData icon;
  final String title, body;
  final VoidCallback? onPressed;
  final String? buttonText;
  final Widget? itemsBuilder;

  const EmptyWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.body,
    this.onPressed,
    this.buttonText,
    this.itemsBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListBody(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: ElasticIn(
                    child: Icon(
                      icon,
                      size: 50,
                      color: context.colorScheme.secondary,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 30),
                  child: Text(
                    title,
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(body, textAlign: TextAlign.center),
                if (onPressed != null)
                  StretchedButton(
                    margin: const EdgeInsets.only(top: 10, left: 60, right: 60),
                    onPressed: onPressed,
                    child: Text(buttonText!),
                  ),
              ],
            ),
          ),
          if (itemsBuilder != null) itemsBuilder!,
        ],
      ),
    );
  }
}
