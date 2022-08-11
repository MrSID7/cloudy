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
    Key? key,
  }) : super(key: key);
  final String? titleAsString;
  final Widget? titleAsWidget;
  final Color backgroundColor;
  final double elevation;
  final Widget? leadingWidget;
  final double? toolbarHeight;
  final List<Widget>? actionWidgets;

  @override
  Widget build(BuildContext context) => AppBar(
        leading: leadingWidget,
        title: titleAsWidget ?? Text(titleAsString ?? ''),
        actions: actionWidgets,
        backgroundColor: backgroundColor,
        foregroundColor: transp,
        elevation: elevation,
        toolbarHeight: toolbarHeight,
        automaticallyImplyLeading: false,
        primary: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: transp,
          statusBarIconBrightness: Brightness.light,
        ),
      );
}
