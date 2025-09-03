import 'package:shared/shared.dart';

class CustomCalender extends StatefulWidget {
  final bool warpContainer;
  const CustomCalender({super.key, this.warpContainer = false});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: widget.warpContainer
            ? context.colorPalette.greyF9F
            : Colors.transparent,
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 13),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                color: _currentIndex != index
                    ? Colors.transparent
                    : _currentIndex == index && widget.warpContainer
                    ? context.colorPalette.blue091
                    : context.colorPalette.blueB2D,
                border: Border.all(color: context.colorPalette.greyF9F),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الاربعاء",
                    style: TextStyle(
                      color: _currentIndex == index && widget.warpContainer
                          ? context.colorPalette.white
                          : context.colorPalette.blue091,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "15",
                    style: TextStyle(
                      color: _currentIndex == index && widget.warpContainer
                          ? context.colorPalette.white
                          : context.colorPalette.blue091,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
