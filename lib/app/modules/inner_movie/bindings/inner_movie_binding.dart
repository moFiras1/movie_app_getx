import 'package:get/get.dart';

import '../controllers/inner_movie_controller.dart';

class InnerMovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InnerMovieController>(
      () => InnerMovieController(),
    );
  }
}
