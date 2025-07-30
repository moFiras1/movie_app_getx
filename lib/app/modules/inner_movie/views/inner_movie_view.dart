import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:movies/app/modules/inner_movie/views/components/movieTypeContainer.dart';

import '../../home_screen/views/components/movie_card_widget.dart';
import '../../home_screen/views/components/movie_container_widget.dart';
import '../controllers/inner_movie_controller.dart';

class InnerMovieView extends GetView<InnerMovieController> {
  const InnerMovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Dora and the lost city of gold',
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/slider_image.png'),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Text(
              'Dora and the lost city of gold',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp),
            ),
          ), // movie name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Text(
              '2019',
              style: TextStyle(
                  color: Color(0xffB5B4B4),
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp),
            ),
          ), // release date
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieCardWidget(
                    isClickable: false,
                    isHaveDetails: false,
                    moviePoster: 'assets/images/movie_card.png',
                    imageHeight: 200.h,
                    imageWidth: 130.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: controller.movieGenres.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 9.w,
                                  mainAxisSpacing: 3.h,
                                  childAspectRatio: 3),
                          itemBuilder: (context, index) => MovieTypeContainer(
                              movieType: controller.movieGenres[index]),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ',
                          maxLines: 5,
                          style: TextStyle(
                              color: Color(0xffCBCBCB),
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/star.png',
                              height: 20.h,
                              width: 20.w,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text('7.7',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                        fontSize: 18.sp, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          ///row of movie card ,description and rate
          MovieContainerWidget(containerTitle: 'More Like This', containerHeight: 200, movieCardWidget: MovieCardWidget(moviePoster: 'assets/images/dead_pool_2_demo.png', imageWidth: 96.w, imageHeight: 128.h))
        ],
      ),
    );
  }
}
