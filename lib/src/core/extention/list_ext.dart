import 'dart:math';

import 'package:cloudy/src/core/constants/assets.dart';

extension LExt<T> on List<T> {
  List<T> reverseTo(bool shouldReverse) =>
      shouldReverse ? reversed.toList() : this;
  T itemAtrandomIndex() => this[Random().nextInt(folderSvgIcons.length)];
}
