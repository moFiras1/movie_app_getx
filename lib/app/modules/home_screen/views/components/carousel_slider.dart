import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'movie_card_widget.dart';

class MyCustomCarousel extends StatelessWidget {
  final String? moviePosterName;
  final String? moviePosterReleaseDate;

  const MyCustomCarousel({super.key, required this.moviePosterName, required this.moviePosterReleaseDate});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Stack(children: [
          Image.asset('assets/images/slider_image.png'),
          Positioned(
            top: 90.h,
            left: 20.w,
            child: MovieCardWidget(
              imageHeight: 127.h,
              imageWidth: 96.w ,
              moviePoster: 'assets/images/movie_card.png',
              isHaveDetails: false,
            ),
          ),
          Positioned(
              right: 18,
              top: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moviePosterName ?? '',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14.sp),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    moviePosterReleaseDate ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 10.sp,color: Color(0xffB5B4B4)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
        ]),
        Stack(children: [
          Image.asset('assets/images/slider_image.png'),
          Positioned(
            top: 90.h,
            left: 20.w,
            child: MovieCardWidget(
              imageHeight: 127.h,
              imageWidth: 96.w ,
              moviePoster: 'assets/images/movie_card.png',
              isHaveDetails: false,
            ),
          ),
          Positioned(
              right: 18,
              top: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moviePosterName ?? '',
                    style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    moviePosterReleaseDate ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 10.sp,color: Color(0xffB5B4B4)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
        ]),
        Stack(children: [
          Image.asset('assets/images/slider_image.png'),
          Positioned(
            top: 90.h,
            left: 20.w,
            child: MovieCardWidget(
              imageHeight: 127.h,
              imageWidth: 96.w ,
              moviePoster: 'assets/images/movie_card.png',
              isHaveDetails: false,
            ),
          ),
          Positioned(
              right: 18,
              top: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moviePosterName ?? '',
                    style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    moviePosterReleaseDate ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 10.sp,color: Color(0xffB5B4B4)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
        ]),
      ],
      options: CarouselOptions(
        animateToClosest: true,
        height: 225.h,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
