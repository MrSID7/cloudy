import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';

List<CustomTextWidget> validatorList = [];

extension SExt on String? {
  bool isThereValue() => this != null && this!.trim().isNotEmpty;
}
