import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';

Future<bool?> showExitConfirmation(BuildContext context) async {
  return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Confirm'.tr(),
            style: TextStyle(
              color: kMainColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Exit'.tr(),
            style: TextStyle(
              color: kMainColor,
              fontSize: 13.sp,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                'yes'.tr(),
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                'no'.tr(),
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ) ??
      false; // Return false if the dialog is dismissed.
}
