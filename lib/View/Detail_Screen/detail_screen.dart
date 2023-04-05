import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/Utils/Screen_Size/screen_sizes.dart';
import 'package:watch_app/Widget/build_Row.dart';
import 'package:watch_app/Widget/build_size_box.dart';
import 'package:watch_app/Widget/build_text.dart';
import 'package:watch_app/Widget/text_button.dart';

import '../../Utils/Colors/app_color.dart';

class DetailScreen extends StatefulWidget {
  String? img;
  String? title;
  String? price;

  DetailScreen({Key? key, this.price, this.title, this.img}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late int _isList1Visible = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: AppColors.kBlackColor,
                      ))
                ],
                iconTheme: const IconThemeData(color: AppColors.kBlackColor),
                backgroundColor: AppColors.kBGColor,
                expandedHeight: 280.0,
                floating: false,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                  widget.img!,
                  fit: BoxFit.contain,
                )),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildText(
                        text: widget.title,
                        size: 17,
                        color: AppColors.kBlackColor,
                        family: 'Outfit-Medium',
                        fontWeight: FontWeight.bold,
                      ),
                      BuildText(
                        text: widget.price,
                        size: 18,
                        color: AppColors.kButtonColor,
                        fontWeight: FontWeight.bold,
                        family: 'Outfit-Medium',
                      ),
                    ],
                  ),
                  BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_1),
                  BuildText(
                    text: "(with solo app)",
                    size: 15,
                    color: AppColors.kTextColor2,
                    family: 'Outfit-Medium',
                  ),
                  BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_3),
                  BuildText(
                    text: "Colors",
                    size: 16,
                    color: AppColors.kBlackColor,
                    family: 'Outfit-Medium',
                    fontWeight: FontWeight.bold,
                  ),
                  BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isList1Visible = 1;
                          });
                        },
                        child: BuildRow(
                          // clickCallback: () {
                          //   setState(() {
                          //     _isList1Visible = 1;
                          //   });
                          // },
                          text: "chalk pink",
                          color1: AppColors.kTextColor3,
                          borderColor: _isList1Visible == 1
                              ? AppColors.kBlackColor
                              : AppColors.kTextColor4,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isList1Visible = 2;
                          });
                        },
                        child: BuildRow(
                          // clickCallback: () {
                          //   setState(() {
                          //     _isList1Visible = 2;
                          //   });
                          // },
                          text: "light pink",
                          color1: AppColors.kTextColor2,
                          borderColor: _isList1Visible == 2
                              ? AppColors.kBlackColor
                              : AppColors.kTextColor4,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isList1Visible = 3;
                          });
                        },
                        child: BuildRow(
                          // clickCallback: () {
                          //   setState(() {
                          //     _isList1Visible = 3;
                          //   });
                          // },
                          text: "Dark order",
                          color1: AppColors.kTextColor4,
                          borderColor: _isList1Visible == 3
                              ? AppColors.kBlackColor
                              : AppColors.kTextColor4,
                        ),
                      ),
                    ],
                  ),
                  BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_3),
                  Row(
                    children: [
                      BuildText(
                        text: "Detail",
                        size: 15,
                        color: AppColors.kTextColor2,
                        family: 'Outfit-Medium',
                        fontWeight: FontWeight.bold,
                      ),
                      BuildSizeBox(
                          weight: Get.width * ScreenSizes.SCREEN_SIZE_8),
                      BuildText(
                        text: "Reviews",
                        size: 15,
                        color: AppColors.kTextColor2,
                        fontWeight: FontWeight.bold,
                        family: 'Outfit-Medium',
                      ),
                    ],
                  ),
                  BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_3),
                  BuildText(
                    text:
                        "What is a case study? A case study is a research approach that is used to generate an in-depth, multi-faceted understanding of a complex issue in its real-life context. It is an established research design that is used extensively in a wide variety of disciplines,",
                    size: 13,
                    color: AppColors.kTextColor4,
                    family: 'Outfit-Medium',
                  ),
                  BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_4),
                  TextBottun(
                    text: 'Add to cart',
                    clickCallback: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
