import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate((context) => const SalariesEmployeeScreen());
      },
      child: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: context.colorPalette.greyF9F,
          border: Border.all(color: context.colorPalette.greyEAE),
          borderRadius: BorderRadius.circular(kRadiusSecondary),
        ),
        child: Row(
          spacing: 10,
          children: [
            BaseNetworkImage(
              "",
              width: 50,
              height: 50,
              shape: BoxShape.circle,
            ),
            Expanded(
              child: Column(
                spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "صهيب البكار",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "راتب شهري",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.blue475,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "2 يوليو,2025-2 أغسطس 2025",
                    style: TextStyle(
                      color: context.colorPalette.blue475,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "500JOD",
                  style: TextStyle(
                    color: context.colorPalette.green19B,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "5 أغسطس",
                  style: TextStyle(
                    color: context.colorPalette.blue475,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
