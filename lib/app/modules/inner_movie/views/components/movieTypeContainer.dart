import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors_manager.dart';

class MovieTypeContainer extends StatelessWidget {
  final String movieType;
  const MovieTypeContainer({super.key,required this.movieType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: ColorManager.movieTypeContainerBorderColor),
          color: Colors.transparent),
      child: Center(
        child: Text(
          movieType,overflow:TextOverflow.ellipsis ,
          style: TextStyle(
              color: Color(0xffCBCBCB),
              fontWeight: FontWeight.w400,
              fontSize: 10.sp),
        ),
      ),
    );
  }
}
