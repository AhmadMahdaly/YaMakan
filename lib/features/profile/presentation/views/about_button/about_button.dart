import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yamakan/features/profile/presentation/views/about_button/about_page.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.sp),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AboutPage(),
        ),
      ),
      child: Container(
        height: 58.sp,
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
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/images/profile/Vector.svg',
                width: 20.sp,
              ),
              SizedBox(width: 10.sp),
              Text(
                'AboutApp'.tr(),
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color(0xFF89898A),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
