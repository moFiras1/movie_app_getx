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
        bottomNavigationBar:
          NavigationBar(
            onDestinationSelected: (value) => controller.index.value=value,
              selectedIndex: controller.index.value,
              destinations: const[
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(icon: Icon(Icons.movie), label: 'Browse'),
            NavigationDestination(icon: Icon(Icons.book), label: 'Watch List'),
          ]),

      ),
    );
  }
}
