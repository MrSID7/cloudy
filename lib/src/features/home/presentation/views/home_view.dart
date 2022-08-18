import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_appbar_widget.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
import 'package:cloudy/src/features/home/presentation/views/widgets/folder_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = context.getSize();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, size.height * 0.12),
        child: CustomAppBar(
          toolbarHeight: size.height * 0.15,
          titleAsString: 'Your CLOUDY Box',
          textStyle: context.theme().textTheme.headline1?.copyWith(
                fontSize: context.getSize().width * 0.08,
              ),
          actionWidgets: <Padding>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child:
                  SvgPicture.asset('assets/svg/more_option_btn_icon_svd.svg'),
            ),
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
                          color: heading1Color,
                        ),
                        onChanged: (String? object) {})
                  ],
                ),
                StatefulBuilder(
                  builder: (_, changeState) {
                    return IconButton(
                      splashRadius: 10,
                      onPressed: () => changeState(() {}),
                      icon: SvgPicture.asset(
                        'assets/svg/grid_view_svg_icon.svg',
                      ),
                    );
                  },
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
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
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: heading1Color,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: white,
          )),
    );
  }
}
