import 'package:cloudy/src/core/extention/ext_export.dart';

extension IExt on int {
  SizedBox space() => SizedBox(
        width: toDouble(),
        height: toDouble(),
      );
}
