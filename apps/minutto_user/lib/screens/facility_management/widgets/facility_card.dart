import 'package:shared/shared.dart';

class FacilityCard extends StatelessWidget {
  final String title, icon;
  final String? collection;
  final Color? textColor;
  final Color backgroundColor;
  final void Function()? onTap;

  const FacilityCard({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    this.textColor,
    this.onTap,
    this.collection,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 106,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: textColor ?? context.colorPalette.blue091,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  CustomSvg(icon),
                ],
              ),
              if (collection != null)
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    '${MyStorage.users.length}',
                    style: TextStyle(
                      color: textColor ?? context.colorPalette.blue091,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
