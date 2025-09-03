import 'package:shared/shared.dart';

class CustomMenu extends StatelessWidget {
  final VoidCallback? onEdit;

  const CustomMenu({
    super.key,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (details) async {
        final offset = details.globalPosition;
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            offset.dx,
            offset.dy,
            context.mediaQuery.width - offset.dx,
            context.mediaQuery.height - offset.dy,
          ),
          items: [
            PopupMenuItem(
              value: 1,
              onTap: onEdit,
              child: Row(
                spacing: 5,
                children: [
                  CustomSvg(MyIcons.editIcon),
                  Text(
                    context.appLocalization.edit,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            // PopupMenuItem(
            //   value: 2,
            //   onTap: () {},
            //   child: Row(
            //     spacing: 5,
            //     children: [
            //       CustomSvg(MyIcons.trash),
            //       Text(
            //         context.appLocalization.delete,
            //         style: TextStyle(
            //           color: context.colorPalette.black,
            //           fontSize: 16,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        );
      },
      child: const CustomSvg(MyIcons.menu),
    );
  }
}
