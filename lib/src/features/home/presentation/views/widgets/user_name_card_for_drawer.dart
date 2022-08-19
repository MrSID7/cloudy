import 'package:cloudy/src/core/constants/res/colors.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';

class UserInfoCard extends StatelessWidget {
  final String name;
  final String place;
  final String? photo;
  const UserInfoCard({
    required this.name,
    required this.place,
    this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: context.getSize().width / 2,
          height: context.getSize().height * 0.15,
          decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: CustomTextWidget(
                      name,
                      style: context.theme().textTheme.headline1,
                    ),
                  ),
                  CustomTextWidget(place)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
