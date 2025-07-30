import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors_manager.dart';
import 'movie_card_widget.dart';

class MovieContainerWidget extends StatelessWidget {
  final String containerTitle;
  final double containerHeight;
  final MovieCardWidget movieCardWidget;

   const MovieContainerWidget({
    super.key,
    required this.containerTitle,
    required this.containerHeight,
    required this.movieCardWidget
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.containerBgColor,
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 12.h),
            child: Text(
              containerTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(
            height: containerHeight,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: movieCardWidget
              ),
              itemCount: 7,
            ),
          ),
        ],
      ),
    );
  }
}
