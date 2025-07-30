import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movies/core/theme/colors_manager.dart';

import '../../../../routes/app_pages.dart';

class MovieCardWidget extends StatelessWidget {
  final bool isHaveDetails;
  final double? rattingValue;
  final String? movieName;
  final String? moviePoster;
  final int? releaseDate;
  final bool isClickable;
  final double imageWidth;
  final double imageHeight;

  const MovieCardWidget({
    super.key,
    this.isHaveDetails = true,
    this.rattingValue,
    this.movieName,
    this.releaseDate,
    required this.moviePoster,
    this.isClickable =true,
    required this.imageWidth,
    required this.imageHeight
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: isClickable ? () => Get.toNamed(Routes.INNER_MOVIE) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset(
              moviePoster!,
              width: imageWidth,
              height: imageHeight,
            ),
            InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/bookmark.png',
                  width: 27.w,
                  height: 36.h,
                )) //book mark , to add film to watchList
          ]),
          /////
          if (isHaveDetails) ...[
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(8.r)),
                color: ColorManager.movieCardColor,
              ),
              width: 96.w,
              child: Padding(
                padding: EdgeInsets.only(left: 6.w, bottom: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Padding(
                        padding: EdgeInsets.all(6.0.h),
                        child: Image.asset(
                          'assets/images/star.png',
                          width: 10.w,
                          height: 10.h,
                        ),
                      ),
                      Text(
                        '$rattingValue',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontSize: 10.sp, color: Colors.white),
                      )
                    ]), //rating
                    Text(
                      movieName ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 10.sp, color: Colors.white),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      '$releaseDate',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 8.sp),
                    ),
                  ],
                ),
              ),
            ),
          ] //rattingValue
        ],
      ),
    );
  }
}
