import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_app/Utils/Colors/app_color.dart';
import 'package:watch_app/Utils/Screen_Size/screen_sizes.dart';
import 'package:watch_app/View/Home_Screen/component/casio_screen.dart';
import 'package:watch_app/View/Home_Screen/component/siko_screen.dart';
import 'package:watch_app/View/Home_Screen/component/smart_watch_screen.dart';
import 'package:watch_app/View/Home_Screen/component/tasto_screen.dart';
import 'package:watch_app/Widget/build_Text_Field.dart';
import 'package:watch_app/Widget/build_size_box.dart';
import 'package:watch_app/Widget/build_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBGColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 35,
                  ),
                  BuildSizeBox(weight: Get.width * ScreenSizes.SCREEN_SIZE_15),
                  Expanded(
                    child: BuildTextField(),
                  ),
                ],
              ),
              BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_4),
              BuildText(
                text: "find your suitable watch now.",
                size: 32,
                family: "Outfit-Medium",
                fontWeight: FontWeight.bold,
              ),
              BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_3),
              TabBar(
                labelStyle: const TextStyle(fontWeight: FontWeight.w700),
                indicatorSize: TabBarIndicatorSize.label,
                controller: tabController,
                labelColor: AppColors.kButtonColor,
                unselectedLabelColor: AppColors.kTextColor2,
                indicatorColor: AppColors.kButtonColor,
                indicatorWeight: 2,
                tabs: const [
                  Tab(text: "Smart watch"),
                  Tab(text: "Casio"),
                  Tab(text: "Taisto"),
                  Tab(text: "Siko"),
                ],
              ),
              BuildSizeBox(height: Get.height * ScreenSizes.SCREEN_SIZE_3),
              Expanded(
                child: TabBarView(controller: tabController, children: const [
                  SmartWatchScreen(),
                  CasioScreen(),
                  TastoScreen(),
                  SikoScreen(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
