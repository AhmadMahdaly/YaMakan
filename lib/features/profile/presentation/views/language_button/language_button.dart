import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yamakan/features/profile/presentation/views/language_button/change_language_function.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.sp),
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
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.sp,
              right: 16.sp,
              top: 5.sp,
              bottom: 5.sp,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/profile/ion_language-outline.svg',
                  width: 20.sp,
                ),
                SizedBox(width: 10.sp),
                Text(
                  'ChangeLanguage'.tr(),
                  style: TextStyle(
                    color: const Color(0xFF89898A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                const LanguageDropDownButton(),
              ],
            ),
          ),
          // onTap: () => showModalBottomSheet(
          //   constraints: BoxConstraints.loose(
          //     Size.fromHeight(
          //       175.sp,
          //     ),
          //   ),
          //   sheetAnimationStyle: AnimationStyle(
          //     curve: Curves.easeIn,
          //     duration: const Duration(milliseconds: 500),
          //   ),
          //   context: context,
          //   builder: (context) => const ChangeLanguage(),
          // ),
        ),
      ),
    );
  }
}
