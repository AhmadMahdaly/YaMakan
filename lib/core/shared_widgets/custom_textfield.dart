import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true, // تفعيل الخلفية الملونة
        fillColor: const Color(0xffFEF7FF),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: const BorderSide(
            color: kMainColor,
          ),
        ),
        hintText: text,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintStyle: TextStyle(
          color: kShadowColor,
          fontSize: 14.sp,
        ),
        border: const OutlineInputBorder(),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: const BorderSide(
            color: kShadowColor,
          ),
        ),
      ),
    );
  }
}

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // تفعيل الخلفية الملونة
        filled: true,
        fillColor: const Color(0xffFEF7FF),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: const BorderSide(
            color: kMainColor,
          ),
        ),
        hintText: text,
        floatingLabelBehavior: FloatingLabelBehavior.never,

        hintStyle: TextStyle(
          color: kShadowColor,
          fontSize: 14.sp,
        ),
        border: const OutlineInputBorder(),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: const BorderSide(
            color: kShadowColor,
          ),
        ),

        suffixIcon: const Icon(
          Icons.remove_red_eye,
          color: kShadowColor,
        ),
      ),
    );
  }
}
