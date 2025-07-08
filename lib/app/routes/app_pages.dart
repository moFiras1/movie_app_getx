import 'package:get/get.dart';

import '../modules/browse_screen/bindings/browse_screen_binding.dart';
import '../modules/browse_screen/views/browse_screen_view.dart';
import '../modules/home_screen/bindings/home_screen_binding.dart';
import '../modules/home_screen/views/home_screen_view.dart';
import '../modules/nave_screen/bindings/nave_screen_binding.dart';
import '../modules/nave_screen/views/nave_screen_view.dart';
import '../modules/search_screen/bindings/search_screen_binding.dart';
import '../modules/search_screen/views/search_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/watch_List_screen/bindings/watch_list_screen_binding.dart';
import '../modules/watch_List_screen/views/watch_list_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.NAVE_SCREEN,
      page: () => NaveScreenView(),
      binding: NaveScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_SCREEN,
      page: () => const SearchScreenView(),
      binding: SearchScreenBinding(),
    ),
    GetPage(
      name: _Paths.BROWSE_SCREEN,
      page: () => const BrowseScreenView(),
      binding: BrowseScreenBinding(),
    ),
    GetPage(
      name: _Paths.WATCH_LIST_SCREEN,
      page: () => const WatchListScreenView(),
      binding: WatchListScreenBinding(),
    ),
  ];
}
