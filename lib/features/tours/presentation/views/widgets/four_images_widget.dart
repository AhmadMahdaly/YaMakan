import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FourImagesWidget extends StatelessWidget {
  const FourImagesWidget({required this.images4, super.key});

  final String images4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.sp),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.sp),
        child: Image.asset(
          images4,
          width: 75.sp,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
