import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.vaidator,
    this.inputType,
    this.hintText = 'Type some thing here',
    Key? key,
  }) : super(key: key);
  final String hintText;
  final TextInputType? inputType;
  final String? Function(String?) vaidator;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 237, 236, 236),
        borderRadius: BorderRadius.all(Radius.circular(35)),
        boxShadow: [
          BoxShadow(
              color: white,
              offset: Offset(5.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          BoxShadow(
              color: Color.fromARGB(255, 227, 226, 226),
              offset: Offset(-5.0, -5.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintText: hintText,
            errorStyle: const TextStyle(color: Colors.red),
            hintStyle: const TextStyle(fontSize: 20)),
        style: const TextStyle(fontSize: 20),
        cursorHeight: 20,
        keyboardType: inputType,
        validator: (value) => vaidator(value),
      ),
    );
  }
}
