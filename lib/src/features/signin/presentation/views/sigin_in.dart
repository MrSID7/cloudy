import 'package:cloudy/src/core/constants/enum/button_enum.dart';
import 'package:cloudy/src/core/constants/hero_id.dart';
import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_appbar_widget.dart';
import 'package:cloudy/src/features/common_widget/custom_elevated_button.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
import 'package:cloudy/src/features/common_widget/text_form_field.dart';
import 'package:cloudy/src/features/home/presentation/views/home_view.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: signInId,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 236, 236),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 80),
          child: Form(
            key: signInFormkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CustomAppBar(
                  titleAsString: 'Sign In',
                  toolbarHeight: 80,
                  textStyle: context.theme().textTheme.headline1,
                ),
                30.space(),
                CustomTextFormField(
                  hintText: 'Email/Username.',
                  vaidator: (String? value) {
                    if (value != null &&
                        value.trim().isNotEmpty &&
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return null;
                    } else {
                      return 'Not a valid Email';
                    }
                  },
                ),
                10.space(),
                CustomTextFormField(
                  hintText: 'Password',
                  obscureText: true,
                  vaidator: (String? value) {
                    if (!value.isThereValue()) {
                      return 'Password Should not be empty';
                    } else if (value!.characters.length <= 7) {
                      return 'Password should be atleast 6 char';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <CustomTextWidget>[
                      CustomTextWidget('Forgote Password ?'),
                    ],
                  ),
                ),
                CustomElevatedButtom(
                  buttontype: Buttontype.normalSingle,
                  backgroundColor: clrMidLightblueDF4,
                  buttonText: 'Sign in',
                  buttonTextStyle: context.theme().textTheme.bodyText1,
                  iconToButton: false,
                  ontap: () {
                    if (signInFormkey.currentState!.validate()) {
                      context.to().push(const HomeView().land());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
