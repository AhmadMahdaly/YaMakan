import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yamakan/features/main_layout/navigation_bar_app.dart';
import 'package:yamakan/features/my_app/locale_controller/locale_controller.dart';

class LanguageDropDownButton extends StatelessWidget {
  const LanguageDropDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLocale = Localizations.localeOf(context).toString();
    return Consumer<LocaleController>(
      builder: (context, localeModel, child) => DropdownButton(
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(15.sp),
        value: selectedLocale,
        items: [
          DropdownMenuItem(
            value: 'en',
            child: Text(
              'English',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF645E5E),
                fontSize: 15.sp,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          DropdownMenuItem(
            value: 'ar',
            child: Text(
              'العربية',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF645E5E),
                fontFamily: 'Tajawal',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
        onChanged: (String? value) async {
          if (value != null) {
            await context.setLocale(
              Locale(value),
            );
            await Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MainLayoutPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
