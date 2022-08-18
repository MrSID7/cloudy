import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/Intro/presentation/views/intro_page.dart';
import 'package:cloudy/src/features/common_widget/custom_elevated_button.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomElevatedButtom(
          backgroundColor: white,
          ontap: () => context.to().pushReplacement(const IntroPage().land())),
    );
  }
}
