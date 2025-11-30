import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class TitleHomePageTextWidget extends StatelessWidget {
  const TitleHomePageTextWidget({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.sp,
        left: 16.sp,
        bottom: 8.sp,
        right: 16.sp,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: kTitleSideColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
