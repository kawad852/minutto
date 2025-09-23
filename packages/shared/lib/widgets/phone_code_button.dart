import 'package:shared/shared.dart';

class PhoneCodeButton extends StatefulWidget {
  final String code;
  final Function(String code) onCodeSelected;

  const PhoneCodeButton({super.key, required this.onCodeSelected, required this.code});

  @override
  State<PhoneCodeButton> createState() => _PhoneCodeButtonState();
}

class _PhoneCodeButtonState extends State<PhoneCodeButton> {
  late String _code;

  @override
  void initState() {
    super.initState();
    _code = widget.code;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useSafeArea: true,
          showDragHandle: true,
          builder: (BuildContext context) {
            return const CountriesBottomSheet();
          },
        ).then((value) {
          if (value != null) {
            final countryModel = value as CountryModel;
            setState(() {
              _code = countryModel.code!;
            });
            widget.onCodeSelected(countryModel.code!);
          }
        });
      },
      child: Text(
        context.getDialCode(_code),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
