import 'package:cloudy/src/core/extention/ext_export.dart';

extension WExt<T> on Widget {
  CustomRoute land() => CustomRoute(builder: (_) => this);
}
