import 'package:shared/shared.dart';

class EditButton extends StatelessWidget {
  final VoidCallback onPressed;

  const EditButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed,
      icon: const Icon(Icons.edit),
    );
  }
}
