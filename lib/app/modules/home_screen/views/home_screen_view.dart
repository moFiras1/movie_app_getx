import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_screen_controller.dart';
import 'components/carousel_slider.dart';
import 'components/movie_card_widget.dart';
import 'components/movie_container_widget.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
         Column(
          children: [
            MyCustomCarousel(
              moviePosterName: 'Dora and the lost city of gold',
              moviePosterReleaseDate: '2019',
            ),
            SizedBox(
              height: 24.h,
            ),
            MovieContainerWidget(
              containerTitle: 'New Release',
              containerHeight: 150.h,
              movieCardWidget: MovieCardWidget(
                imageWidth: 96.w,
                imageHeight: 128.h,
                moviePoster: 'assets/images/film_poster_demo.png',
                isHaveDetails: false,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            MovieContainerWidget(
              containerTitle: 'Recommended',
              containerHeight: 200.h,
              movieCardWidget: MovieCardWidget(
                imageWidth:96.w ,
                imageHeight:128.h ,
                moviePoster: 'assets/images/dead_pool_2_demo.png',
                releaseDate: 2018,
                movieName: 'Deadpool 2',
                rattingValue: 7.7,

              ),
            )
          ],
        ),

    );
  }
}
