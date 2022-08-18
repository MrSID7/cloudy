import 'package:cloudy/src/core/constants/assets.dart';
import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:cloudy/src/features/common_widget/custom_text_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FolderCard extends StatelessWidget {
  const FolderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: 107,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffeef7fe),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <IconButton>[
              IconButton(
                  splashRadius: 1,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Color.fromARGB(255, 146, 172, 192),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 35.37,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SvgPicture.asset(folderSvgIcons.itemAtrandomIndex()),
                ),
                const SizedBox(height: 7),
                const CustomTextWidget(
                  "Mobile Apps",
                ),
                const SizedBox(height: 7),
                const Text(
                  "December 20.2020",
                  style: TextStyle(
                    color: Color(0xff415db5),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
