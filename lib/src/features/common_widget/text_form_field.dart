import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.vaidator,
    this.inputType,
    this.hintText = 'Type some thing here',
    this.controller,
    this.streamValidation = true,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final TextInputType? inputType;
  final String? Function(String?) vaidator;
  final TextEditingController? controller;
  final bool streamValidation;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    String? errorText = '';
    return StatefulBuilder(builder: (_, changeState) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 45,
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
              controller: controller,
              cursorHeight: 20,
              keyboardType: inputType,
              obscureText: obscureText,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  hintText: hintText,
                  errorStyle:
                      const TextStyle(fontSize: 0, height: 0, color: transp),
                  hintStyle: const TextStyle(fontSize: 20)),
              style: const TextStyle(fontSize: 20),
              onChanged: (String? value) {
                if (streamValidation) {
                  errorText = vaidator(value);
                  if (!value.isThereValue()) {
                    errorText = '';
                  }
                  changeState(() {});
                }
              },
              validator: (value) => vaidator(value),
            ),
          ),
          12.space(),
          errorText == null
              ? CustomTextWidget(
                  'Great ✔',
                  style: context
                      .theme()
                      .textTheme
                      .caption
                      ?.copyWith(color: green, fontSize: 12.4),
                )
              : errorText.isThereValue()
                  ? CustomTextWidget('$errorText  ❗',
                      style: context
                          .theme()
                          .textTheme
                          .caption
                          ?.copyWith(color: red, fontSize: 14.5))
                  : 14.space(),
        ],
      );
    });
  }
}
