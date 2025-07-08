import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/browse_screen_controller.dart';

class BrowseScreenView extends GetView<BrowseScreenController> {
  const BrowseScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue,),
    );
  }
}
