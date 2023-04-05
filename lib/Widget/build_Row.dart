import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/Utils/Colors/app_color.dart';
import 'package:watch_app/Utils/Screen_Size/screen_sizes.dart';
import 'package:watch_app/Widget/build_size_box.dart';

import 'build_text.dart';

class BuildRow extends StatelessWidget {
  Color? color1;
  Color borderColor;
  String? text;
  // final VoidCallback clickCallback;
  BuildRow(
      {Key? key,
      this.text,
      this.color1,
      // required this.clickCallback,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 95,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 3, right: 3),
        child: Row(
          children: [
            CircleAvatar(radius: 12, backgroundColor: color1),
            BuildSizeBox(weight: Get.width * ScreenSizes.SCREEN_SIZE_1),
            BuildText(
              text: text,
              size: 12,
              color: AppColors.kTextColor2,
              family: 'Outfit-Medium',
            ),
          ],
        ),
      ),
    );
  }
}
