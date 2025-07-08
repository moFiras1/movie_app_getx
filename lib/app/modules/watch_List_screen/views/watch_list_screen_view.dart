import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/watch_list_screen_controller.dart';

class WatchListScreenView extends GetView<WatchListScreenController> {
  const WatchListScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(color: Colors.yellowAccent,),
    );
  }
}
