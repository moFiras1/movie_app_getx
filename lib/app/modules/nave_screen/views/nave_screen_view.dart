import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/nave_screen_controller.dart';

class NaveScreenView extends GetView<NaveScreenController> {

   const NaveScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  Scaffold(
        body: controller.pages[controller.index.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.index.value,
          onTap: (value) => controller.index.value = value,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Browse'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Watch List'),
          ],
        ),

      ),
    );
  }
}
