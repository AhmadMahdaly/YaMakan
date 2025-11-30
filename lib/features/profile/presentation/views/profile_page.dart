import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/features/profile/presentation/views/about_button/about_button.dart';
import 'package:yamakan/features/profile/presentation/views/language_button/language_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.sp,
          right: 16.sp,
        ),
        child: ListView(
          children: const [
            /// first Card
            // CustomFadeInDown(
            //   duration: 400,
            //   child: Container(
            //     decoration: ShapeDecoration(
            //       color: Colors.white,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(
            //           15.sp,
            //         ),
            //       ),
            //       shadows: const [
            //         BoxShadow(
            //           color: Color(0x19000000),
            //           blurRadius: 4,
            //           offset: Offset(
            //             2,
            //             4,
            //           ),
            //         ),
            //       ],
            //     ),
            //     child: Column(
            //       children: [
            //           const CustomDivider(),
            //       ],
            //     ),
            //   ),
            // ),
            AboutButton(),
            Language(),
            // const SignScreenButton(),
          ],
        ),
      ),
    );
  }
}
