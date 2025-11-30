import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class PointPath extends StatelessWidget {
  const PointPath({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
        Circle(num: 7.sp),
      ],
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({required this.num, super.key});
  final double? num;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      size: num,
      color: kMainColor,
    );
  }
}
        // Icon(
        //   Icons.flag_circle,
        //   size: 16.sp,
        //   color: kMainColor)
