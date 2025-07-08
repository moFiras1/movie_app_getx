import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../browse_screen/views/browse_screen_view.dart';
import '../../home_screen/views/home_screen_view.dart';
import '../../search_screen/views/search_screen_view.dart';
import '../../watch_List_screen/views/watch_list_screen_view.dart';

class NaveScreenController extends GetxController {
  //TODO: Implement HomeController

  RxInt index = 0.obs;
  final pages = [
    HomeScreenView(key: const PageStorageKey('home'),),
    SearchScreenView(key: const PageStorageKey('search'),),
    BrowseScreenView(key: const PageStorageKey('browse'),),
    WatchListScreenView(key: const PageStorageKey('watchList'),)
  ];
}
