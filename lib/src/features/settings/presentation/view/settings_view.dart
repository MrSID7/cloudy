import 'package:cloudy/src/core/constants/data.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_appbar_widget.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: context.getSize().height <= 470
            ? const BouncingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          25.space(),
          CustomAppBar(
            toolbarHeight: 60,
            leadingWidget: IconButton(
              onPressed: () {
                context.to().pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            titleAsWidget: CustomTextWidget(
              'Settings',
              style: context
                  .theme()
                  .textTheme
                  .headline2
                  ?.copyWith(fontWeight: FontWeight.w700, fontSize: 30),
            ),
          ),
          20.space(),
          for (String item in settingsPropertyList)
            Padding(
              padding: const EdgeInsets.only(bottom: 13.0),
              child: CustomTextWidget(
                item,
                style:
                    context.theme().textTheme.bodyText2?.copyWith(fontSize: 26),
              ),
            ),
        ],
      ),
    );
  }
}
