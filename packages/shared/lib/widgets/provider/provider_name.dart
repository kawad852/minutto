import '../../shared.dart';

class ProviderName extends StatelessWidget {
  final String name;
  final int? maxLines;

  const ProviderName(this.name, {super.key, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: context.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
      ),
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
    );
  }
}
