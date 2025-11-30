import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yamakan/core/cache_helper/cache_helper.dart';
import 'package:yamakan/core/cache_helper/cache_values.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/intro/onboarding/onboarding_view.dart';
import 'package:yamakan/features/main_layout/navigation_bar_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool _hasRedirected = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _redirect();
    });
  }

  Future<void> _redirect() async {
    if (_hasRedirected || !mounted) return;
    _hasRedirected = true;
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    final hasSeenOnboarding = CacheHelper.get<bool>(CacheKeys.isFirstOpen);
    if (hasSeenOnboarding == null) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        ),
      );
    } else {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainLayoutPage(),
        ),
      );
    }
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kMainColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // add your images & Icon or Text //
            FadeInDown(
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                semanticsLabel: 'My SVG Image',
                width: 90.sp,
              ),
            ),
            SizedBox(height: 10.sp),
            Text(
              'YaMaKan',
              style: TextStyle(
                fontFamily: 'jura',
                color: Colors.white,
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
              ),
            ),

            // Text(
            //   'اكتشف أماكن وتجارب جديدة',
            //   style: TextStyle(
            //     color: const Color(0xFF2D2D66),
            //     fontSize: 16.sp,
            //     fontWeight: FontWeight.w700,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
