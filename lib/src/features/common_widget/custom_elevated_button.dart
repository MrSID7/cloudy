import 'package:cloudy/src/core/constants/enum/button_enum.dart';
import 'package:cloudy/src/core/constraints/button_constraints.dart';
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
    this.buttonText,
    this.iconPath,
    this.buttontype = Buttontype.normal,
    Key? key,
  }) : super(key: key);
  final bool iconToButton;
  final Icon? icon;
  final String? iconPath;
  final String? buttonText;
  final TextStyle? buttonTextStyle;
  final Color backgroundColor;
  final Function ontap;
  final Buttontype buttontype;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: ButtonConstraints.borderRadius(buttontype),
      child: InkWell(
        onTap: () => ontap(),
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: ButtonConstraints.borderRadius(buttontype),
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
              mainAxisAlignment: buttontype == (Buttontype.normalSingle)
                  ? MainAxisAlignment.center
                  : buttontype == (Buttontype.normalSingle)
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
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
                        buttonText ?? '',
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
