import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
import 'package:flutter_svg/svg.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({
    required this.backgroundColor,
    required this.ontap,
    this.icon,
    this.buttonTextStyle,
    this.iconToButton = true,
    this.heroTag='',
    this.buttonText,
    this.iconPath,
    Key? key,
  }) : super(key: key);
  final String heroTag;
  final bool iconToButton;
  final Icon? icon;
  final String? iconPath;
  final String? buttonText;
  final TextStyle? buttonTextStyle;
  final Color backgroundColor;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: InkWell(
        onTap: ontap(),
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor,
          ),
          padding: const EdgeInsets.only(
            left: 27,
            right: 26,
          ),
          child: SizedBox(
            width: 97,
            height: 26,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                (iconPath == null && icon == null)
                    ? 0.space()
                    : icon == null
                        ? SvgPicture.asset(iconPath!)
                        : icon!,
                buttonText == null
                    ? 0.space()
                    : CustomTextWidget(
                        buttonText,
                        style: buttonTextStyle,
                      )
              ].reverseTo(!iconToButton),
            ),
          ),
        ),
      ),
    );
  }
}
