import 'package:cloudy/src/core/constants/assets.dart';
import 'package:cloudy/src/core/constants/enum/button_enum.dart';
import 'package:cloudy/src/core/constants/hero_id.dart';
import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_elevated_button.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
import 'package:cloudy/src/features/signin/presentation/views/sigin_in.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: context.getSize().height / 2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/Illustration.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.getSize().height * 0.32,
                left: 10,
                right: 10,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  10.space(),
                  CustomTextWidget(
                    'Welcome to',
                    style: context.theme().textTheme.headline2,
                  ),
                  10.space(),
                  CustomTextWidget(
                    'CLOUDY',
                    style: context.theme().textTheme.headline1,
                  ),
                  10.space(),
                  CustomTextWidget(
                    'Best cloud storage platform for all\nbusiness and individuals to\nmanage there data\n\nJoin For Free.',
                    style: context.theme().textTheme.subtitle1,
                  ),
                  60.space(),
                  SizedBox(
                    height: 50,
                    width: context.getSize().width,
                    child: Stack(
                      children: <Widget>[
                        TweenAnimationBuilder(
                            curve: Curves.linear,
                            duration: const Duration(seconds: 1),
                            tween: Tween<double>(
                                begin: 0, end: context.getSize().width / 2),
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
                                    buttonTextStyle:
                                        context.theme().textTheme.bodyText2,
                                    ontap: () {},
                                  ),
                                ),
                              );
                            }),
                        TweenAnimationBuilder(
                            curve: Curves.linear,
                            duration: const Duration(seconds: 1),
                            tween: Tween<double>(
                                begin: 0, end: context.getSize().width / 2),
                            builder: (context, double value, __) {
                              return Positioned(
                                right: value,
                                top: 0,
                                child: Hero(
                                  transitionOnUserGestures: true,
                                  tag: signInId,
                                  child: CustomElevatedButtom(
                                    buttontype: Buttontype.signin,
                                    backgroundColor: signinbuttontxtclr,
                                    buttonText: 'Sign in',
                                    icon: const Icon(
                                      Icons.forward,
                                      color: white,
                                    ),
                                    buttonTextStyle:
                                        context.theme().textTheme.bodyText1,
                                    iconToButton: false,
                                    ontap: () => context
                                        .to()
                                        .push(const SignInPage().land()),
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  40.space(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CustomTextWidget(
                        'Use Social Login',
                        style: context.theme().textTheme.subtitle2,
                        fontSize: 14,
                      ),
                      30.space(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          socialSvgIcons.length,
                          (index) => SvgPicture.asset(
                            socialSvgIcons[index],
                          ),
                        ),
                      ),
                      50.space(),
                      CustomTextWidget(
                        'Create an account',
                        style: context.theme().textTheme.subtitle2,
                        fontSize: 19,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
