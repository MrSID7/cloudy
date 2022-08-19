import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    this.titleAsString,
    this.titleAsWidget,
    this.backgroundColor = transp,
    this.elevation = 0,
    this.leadingWidget,
    this.toolbarHeight,
    this.actionWidgets,
    this.textStyle,
    this.centerTitle = false,
    this.automaticallyImplyLeading = false,
    Key? key,
  }) : super(key: key);
  final String? titleAsString;
  final Widget? titleAsWidget;
  final Color backgroundColor;
  final double elevation;
  final Widget? leadingWidget;
  final double? toolbarHeight;
  final List<Widget>? actionWidgets;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) => AppBar(
        centerTitle: centerTitle,
        leading: leadingWidget,
        title: titleAsWidget ??
            Text(
              titleAsString ?? '',
              style: textStyle,
            ),
        actions: actionWidgets,
        backgroundColor: backgroundColor,
        foregroundColor: transp,
        elevation: elevation,
        toolbarHeight: toolbarHeight,
        automaticallyImplyLeading: automaticallyImplyLeading,
        primary: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: transp,
          statusBarIconBrightness: Brightness.light,
        ),
      );
}
