import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/Controller/watch_controller.dart';
import 'package:watch_app/Utils/Colors/app_color.dart';

import '../../../Utils/Screen_Size/screen_sizes.dart';
import '../../../Widget/build_size_box.dart';
import '../../../Widget/build_text.dart';
import '../../Detail_Screen/detail_screen.dart';

class SmartWatchScreen extends StatefulWidget {
  const SmartWatchScreen({Key? key}) : super(key: key);

  @override
  State<SmartWatchScreen> createState() => _SmartWatchScreenState();
}

class _SmartWatchScreenState extends State<SmartWatchScreen> {
  final _watchController = WatchController();
  @override
  Widget build(BuildContext context) {
    var _crossAxisSpacing = 8;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 3;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var cellHeight = 150;
    var _aspectRatio = _width / cellHeight;
    return Scaffold(
      backgroundColor: AppColors.kBGColor,
      body: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          itemCount: _watchController.getWatchData.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: _aspectRatio,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                            img: _watchController.getWatchData[index].imagePath
                                .toString(),
                            price: _watchController.getWatchData[index].price
                                .toString(),
                            title: _watchController.getWatchData[index].title
                                .toString(),
                          )),
                );
              },
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                          child: Image.asset(_watchController
                              .getWatchData[index].imagePath
                              .toString())),
                      BuildText(
                        text: _watchController.getWatchData[index].title
                            .toString(),
                        size: 16,
                        color: AppColors.kBlackColor,
                        fontWeight: FontWeight.bold,
                        family: 'Outfit-Medium',
                      ),
                      BuildSizeBox(
                          height: Get.height * ScreenSizes.SCREEN_SIZE_1),
                      BuildText(
                        text: _watchController.getWatchData[index].subTitle
                            .toString(),
                        size: 14,
                        color: AppColors.kTextColor2,
                        family: 'Outfit-Medium',
                      ),
                      BuildSizeBox(
                          height: Get.height * ScreenSizes.SCREEN_SIZE_2),
                      BuildText(
                        text: _watchController.getWatchData[index].price
                            .toString(),
                        size: 16,
                        color: AppColors.kBlackColor,
                        fontWeight: FontWeight.bold,
                        family: 'Outfit-Medium',
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
