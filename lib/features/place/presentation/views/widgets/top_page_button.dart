import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopPageButton extends StatelessWidget {
  const TopPageButton({required this.icon, super.key});
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.sp,
      height: 40.sp,
      padding: EdgeInsets.all(5.sp),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xFFEDEDED),
          ),
          borderRadius: BorderRadius.circular(8.sp),
        ),
      ),
      child: icon,
    );
  }
}
