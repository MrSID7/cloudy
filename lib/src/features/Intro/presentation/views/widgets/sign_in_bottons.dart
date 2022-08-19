import 'package:cloudy/src/core/constants/enum/button_enum.dart';
import 'package:cloudy/src/core/constants/hero_id.dart';
import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_elevated_button.dart';
import 'package:cloudy/src/features/signin/presentation/views/sigin_in.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: context.getSize().width,
      child: Stack(
        children: <Widget>[
          TweenAnimationBuilder(
              curve: Curves.linear,
              duration: const Duration(seconds: 1),
              tween: Tween<double>(begin: 0, end: context.getSize().width / 2),
              builder: (context, double value, __) {
                return Positioned(
                  left: value,
                  top: 0,
                  child: Hero(
                    tag: smartId,
                    child: CustomElevatedButtom(
                      buttontype: Buttontype.signin,
                      backgroundColor: lighblueBtn,
                      buttonText: 'Smart Id',
                      iconPath: 'assets/svg/fingerprint.svg',
                      buttonTextStyle: context.theme().textTheme.bodyText2,
                      ontap: () {},
                    ),
                  ),
                );
              }),
          TweenAnimationBuilder(
              curve: Curves.linear,
              duration: const Duration(seconds: 1),
              tween: Tween<double>(begin: 0, end: context.getSize().width / 2),
              builder: (context, double value, __) {
                return Positioned(
                  right: value,
                  top: 0,
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: signInId,
                    child: CustomElevatedButtom(
                      buttontype: Buttontype.signin,
                      backgroundColor: clrMidLightblueDF4,
                      buttonText: 'Sign in',
                      icon: const Icon(
                        Icons.forward,
                        color: white,
                      ),
                      buttonTextStyle: context.theme().textTheme.bodyText1,
                      iconToButton: false,
                      ontap: () => context.to().push(const SignInPage().land()),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
