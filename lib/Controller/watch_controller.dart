import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:watch_app/Model/watch_model.dart';

class WatchController extends GetxController {
  List<WatchModel> getWatchData = [
    WatchModel(
      title: "Apple watch",
      imagePath: "image/watch/watch1.png",
      price: "\$124",
      subTitle: "series 1",
    ),
    WatchModel(
      title: "Galaxy watch",
      imagePath: "image/watch/watch2.png",
      price: "\$330",
      subTitle: "series 2",
    ),
    WatchModel(
      title: "mix watch",
      imagePath: "image/watch/watch3.png",
      price: "\$124",
      subTitle: "series 2",
    ),
    WatchModel(
      title: "Amaz fit watch",
      imagePath: "image/watch/watch4.png",
      price: "\$124",
      subTitle: "series 2",
    ),
  ];
}
