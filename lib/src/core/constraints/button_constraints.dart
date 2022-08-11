import 'package:cloudy/src/core/constants/enum/button_enum.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';

class ButtonConstraints {
  static BorderRadius borderRadius(Buttontype type) {
    switch (type) {
      case Buttontype.signin:
        {
          return BorderRadius.circular(10);
        }
      case Buttontype.signinSingle:
        {
          return BorderRadius.circular(10);
        }
      case Buttontype.normalSingle:
        {
          return BorderRadius.circular(25);
        }
      case Buttontype.disabled:
        {
          return BorderRadius.circular(10);
        }
      case Buttontype.normal:
        {
          return BorderRadius.circular(25);
        }
    }
  }
}
