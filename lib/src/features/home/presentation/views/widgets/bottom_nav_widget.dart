import 'package:cloudy/src/core/constants/data.dart';
import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/constants/res/icon.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
import 'package:cloudy/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[transp, white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: <double>[0.1, 1.0]),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: List.generate(
                      4,
                      (index) => index == state.currentPageIndex
                          ? ColoredBox(
                              color: clrMidLightblueDF4,
                              child: SizedBox(
                                width: size.width / 4,
                                height: 5,
                              ),
                            )
                          : SizedBox(
                              width: size.width / 4,
                            )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      4,
                      (index) => SizedBox(
                            width: size.width / 4,
                            child: InkWell(
                              onTap: () => context
                                  .read<HomeBloc>()
                                  .add(ChangePage(index: index)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    bottomNavigationBarIcon[index],
                                  ),
                                  CustomTextWidget(
                                    bottomNavScreenList[index],
                                    style: context.theme().textTheme.caption,
                                  ),
                                ],
                              ),
                            ),
                          )),
                ),
              ],
            ));
      },
    );
  }
}
