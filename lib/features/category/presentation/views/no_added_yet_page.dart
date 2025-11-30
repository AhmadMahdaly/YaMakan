import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class NoAddedYet extends StatelessWidget {
  const NoAddedYet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/marker-time 1.svg',
                colorFilter: const ColorFilter.mode(
                  kShadowColor,
                  BlendMode.srcIn,
                ),
                height: 70.sp,
              ),
              SizedBox(height: 20.sp),
              Text(
                'NoAddedYet'.tr(),
                style: TextStyle(
                  color: kShadowColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 200.sp),
            ],
          ),
        ),
      ),
    );
  }
}
