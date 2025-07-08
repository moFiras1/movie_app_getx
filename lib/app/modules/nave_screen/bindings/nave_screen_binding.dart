import 'package:get/get.dart';

import '../controllers/nave_screen_controller.dart';


class NaveScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NaveScreenController>(
      () => NaveScreenController(),
    );
  }
}
