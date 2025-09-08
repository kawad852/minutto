import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class SalaryCard extends StatelessWidget {
  const SalaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kRadiusSecondary),
      child: ExpansionTile(
        initiallyExpanded: false,
        backgroundColor: context.colorPalette.greyF7F,
        collapsedBackgroundColor: context.colorPalette.greyF7F,
        collapsedShape: BorderDirectional(
          start: BorderSide(color: context.colorPalette.blueB2D, width: 8),
        ),
        shape: BorderDirectional(
          start: BorderSide(color: context.colorPalette.blueB2D, width: 8),
        ),
        title: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${context.appLocalization.salaryReport} مارس 2023",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 6),
                    child: Text(
                      "${context.appLocalization.fromDate} 03.03.2023",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    "${context.appLocalization.toDate} 03.03.2023",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "321.10 د.أ",
              style: TextStyle(
                color: context.colorPalette.blue091,
                fontSize: 16,
              ),
            ),
          ],
        ),
        children: [SalaryTable()],
      ),
    );
  }
}
