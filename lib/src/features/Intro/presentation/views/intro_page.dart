import 'package:cloudy/src/core/constants/assets.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/Intro/presentation/views/widgets/sign_in_bottons.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
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
                  const SignInButtons(),
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
