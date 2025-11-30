import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    required this.image,
    required this.height,
    super.key,
  });
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 103.sp,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11.sp),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
