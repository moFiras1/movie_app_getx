import 'package:get/get.dart';

import '../controllers/watch_list_screen_controller.dart';

class WatchListScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WatchListScreenController>(
      () => WatchListScreenController(),
    );
  }
}
