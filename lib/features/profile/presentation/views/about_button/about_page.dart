import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Localizations.localeOf(context) == const Locale('en')
              ? Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(45.sp),
                    ),
                    color: kMainColor,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: 70.sp,
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45.sp),
                    ),
                    color: kMainColor,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: 70.sp,
                  ),
                ),
        ),
        toolbarHeight: 180.sp,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22.sp,
            color: Colors.white.withAlpha(90),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(24.sp),
              child: Text(
                'AboutMyApp'.tr(),
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: const Color(0xFF5F5F5F),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
