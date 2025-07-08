import 'package:get/get.dart';

import '../controllers/browse_screen_controller.dart';

class BrowseScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrowseScreenController>(
      () => BrowseScreenController(),
    );
  }
}
