import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/Utils/Colors/app_color.dart';
import 'package:watch_app/Widget/build_text.dart';

class TextBottun extends StatelessWidget {
  final String text;
  final VoidCallback clickCallback;
  const TextBottun({Key? key, required this.text, required this.clickCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => clickCallback(),
      child: Container(
        height: Get.height * 0.07,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.kButtonColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: BuildText(
          text: text,
          size: 16,
          color: AppColors.kWhiteColor,
          fontWeight: FontWeight.bold,
          family: 'Montserrat-SemiBold',
        ),
      ),
    );
  }
}
