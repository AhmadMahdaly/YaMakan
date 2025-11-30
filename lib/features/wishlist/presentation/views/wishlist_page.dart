import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/main_layout/navigation_bar_app.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/wishList.png',
              width: 220.sp,
              height: 220.sp,
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Text(
                'NoFavorites'.tr(),
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'WishlistSave'.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF878787),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20.sp),
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainLayoutPage(),
                  ),
                ),
                child: Container(
                  width: 327.sp,
                  height: 56.sp,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.circular(8.sp),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'DiscoverPlaces'.tr(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
