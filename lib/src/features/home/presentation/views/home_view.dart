import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_appbar_widget.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
import 'package:cloudy/src/features/home/presentation/views/widgets/bottom_nav_widget.dart';
import 'package:cloudy/src/features/home/presentation/views/widgets/folder_card.dart';
import 'package:cloudy/src/features/settings/presentation/view/settings_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = context.getSize();
    return Scaffold(
      extendBody: true,
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          size.height * 0.12,
        ),
        child: CustomAppBar(
          toolbarHeight: size.height * 0.155,
          titleAsString: 'Your CLOUDY Box',
          textStyle: context.theme().textTheme.headline1?.copyWith(
                fontSize: context.getSize().width * 0.08,
              ),
          actionWidgets: [
            IconButton(
                onPressed: () {
                  context.to().push(const SettingsView().land());
                },
                icon: const Icon(
                  Icons.tune_outlined,
                  color: darkblue,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            const CupertinoSearchTextField(),
            10.space(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomTextWidget(
                      "Recent",
                    ),
                    DropdownButton(
                        items: const <DropdownMenuItem<String>>[],
                        underline: 0.space(),
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                        ),
                        onChanged: (String? object) {})
                  ],
                ),
                IconButton(
                  splashRadius: 10,
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/grid_view_svg_icon.svg',
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(bottom: 55, top: 10),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemCount: 30,
                itemBuilder: (_, index) {
                  return const FolderCard();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(size: size),
    );
  }
}
