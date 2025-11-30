import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class TourTime extends StatelessWidget {
  const TourTime({
    required this.carTime,
    required this.walkTime,
    super.key,
  });
  final String carTime;
  final String walkTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 19.sp,
      ),
      child: Row(
        children: [
          Icon(
            Icons.run_circle_sharp,
            size: 24.sp,
            color: kMainColor,
          ),
          SizedBox(width: 16.sp),
          Icon(
            Icons.directions_car_outlined,
            size: 14.sp,
            color: kMainColor,
          ),
          SizedBox(width: 4.sp),
          Text(
            carTime,
            style: TextStyle(
              color: kMainColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.directions_walk_outlined,
            size: 14.sp,
            color: kMainColor,
          ),
          SizedBox(width: 4.sp),
          Text(
            walkTime,
            style: TextStyle(
              color: kMainColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 16.sp),
        ],
      ),
    );
  }
}
