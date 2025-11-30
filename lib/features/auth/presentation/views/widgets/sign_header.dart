import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class SignHeader extends StatelessWidget {
  const SignHeader({
    required this.welcomeText,
    required this.text,
    super.key,
  });
  final String welcomeText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              welcomeText,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: kMainColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: const Color(0xFF2D2D66),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 42.sp,
          height: 48.sp,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: SvgPicture.asset(
            'assets/images/logo.svg',
          ),
        ),
        SizedBox(width: 20.sp),
      ],
    );
  }
}
