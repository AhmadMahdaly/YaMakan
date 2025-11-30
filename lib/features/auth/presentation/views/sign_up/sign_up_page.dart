import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/shared_widgets/custom_button.dart';
import 'package:yamakan/core/shared_widgets/custom_textfield.dart';
import 'package:yamakan/features/auth/presentation/views/widgets/sign_header.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.sp),
      children: [
        SignHeader(
          welcomeText: 'WelcometoYaMakan'.tr(),
          text: 'LetsExplore'.tr(),
        ),
        SizedBox(height: 36.sp),
        CustomTextField(text: 'FullName'.tr()),
        SizedBox(height: 16.sp),
        CustomTextField(text: 'Mobile'.tr()),
        SizedBox(height: 16.sp),
        CustomPasswordField(text: 'Password'.tr()),
        SizedBox(height: 24.sp),
        CustomButton(text: 'CreateAccount'.tr()),
      ],
    );
  }
}
