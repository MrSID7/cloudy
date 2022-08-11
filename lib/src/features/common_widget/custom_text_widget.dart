import 'package:cloudy/src/core/extention/ext_export.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
    this.text, {
    this.textColor,
    this.fontSize,
    this.fontStyle,
    this.overflow,
    this.fontWeight,
    this.style,
    this.shouldUseThemeStyle = true,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontStyle? fontStyle;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final bool shouldUseThemeStyle;
  @override
  Widget build(BuildContext context) => Text(
        text,
        style: shouldUseThemeStyle
            ? style ?? context.theme().textTheme.caption
            : TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontStyle: fontStyle,
                overflow: overflow,
                fontWeight: fontWeight,
              ),
      );
}
