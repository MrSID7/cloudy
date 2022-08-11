import 'package:cloudy/src/core/extention/ext_export.dart';

extension BExt on BuildContext {
  Size getSize() => MediaQuery.of(this).size;
  NavigatorState to() => Navigator.of(this);
  ThemeData theme() => Theme.of(this);
}

class CustomRoute extends MaterialPageRoute {
  CustomRoute({required super.builder});
  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);
}
