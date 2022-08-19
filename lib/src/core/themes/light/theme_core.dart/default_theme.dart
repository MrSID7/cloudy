import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/core/themes/light/appbar_theme.dart';
import 'package:cloudy/src/core/themes/light/icon_theme.dart';
import 'package:cloudy/src/core/themes/light/text_theme.dart';

class Themes {
  static final theme = ThemeData(
      // useMaterial3: true,
      primaryTextTheme: textTheme,
      textTheme: textTheme,
      iconTheme: iconTheme,
      appBarTheme: appBarTheme,
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(backgroundColor: transp),
      splashFactory: NoSplash.splashFactory,
      splashColor: transp);
}
