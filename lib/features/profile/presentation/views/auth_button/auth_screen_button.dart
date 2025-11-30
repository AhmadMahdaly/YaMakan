import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yamakan/core/animation/animation_do.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/auth/presentation/views/auth_tabs_screen.dart';

class AuthScreenButton extends StatelessWidget {
  const AuthScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Padding(
        padding: EdgeInsets.only(top: 16.sp),
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.sp),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 4,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignScreen(),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/profile/uiw_login.svg',
                    width: 20.sp,
                  ),
                  SizedBox(width: 12.sp),
                  Text(
                    'LogIn'.tr(),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
