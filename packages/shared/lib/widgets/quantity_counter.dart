import '../../shared.dart';

class QuantityCounter extends StatelessWidget {
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;
  final int quantity;
  final bool large;

  const QuantityCounter({
    super.key,
    required this.onAdd,
    required this.onRemove,
    required this.quantity,
    required this.large,
  });

  Widget _buildButton(
    BuildContext context,
    IconData icon, {
    required VoidCallback? onPressed,
  }) {
    return MaterialButton(
      onPressed: onPressed,
      // minWidth: const Size.fromRadius(5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      minWidth: 0,
      height: 0,

      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: CircleBorder(),
      child: FaIcon(icon, size: large ? null : 15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadiusPrimary),
        border: Border.all(color: context.colorScheme.surfaceDim),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButton(context, FontAwesomeIcons.minus, onPressed: onRemove),
          SizedBox(
            width: large ? 33 : 18,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                key: ValueKey(quantity),
                quantity.toString(),
                style: large
                    ? context.textTheme.headlineSmall
                    : context.textTheme.bodyMedium,
              ),
            ),
          ),
          _buildButton(context, FontAwesomeIcons.plus, onPressed: onAdd),
        ],
      ),
    );
  }
}
