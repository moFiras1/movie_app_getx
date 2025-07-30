import 'package:get/get.dart';

class InnerMovieController extends GetxController {
  final List<String> movieGenres = ['Action', 'Romance', 'Drama', 'Sci-Fi', 'Comedy'];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
