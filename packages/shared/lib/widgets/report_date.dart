import 'package:shared/shared.dart';

class ReportDate extends StatelessWidget {
  const ReportDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 230,
          height: 45,
          decoration: BoxDecoration(
            color: context.colorPalette.blue26,
            borderRadius: BorderRadius.circular(kRadiusSecondary),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              ),
              Expanded(
                child: Text(
                  "إبريل 2023",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
