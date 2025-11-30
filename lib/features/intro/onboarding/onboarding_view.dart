import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/animation/animation_do.dart';
import 'package:yamakan/core/cache_helper/cache_helper.dart';
import 'package:yamakan/core/cache_helper/cache_values.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/intro/onboarding/widgets/onboarding_widget.dart';
import 'package:yamakan/features/main_layout/navigation_bar_app.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                60.horizontalSpace,
              ],
            ),
            //
            Padding(
              padding: EdgeInsets.all(20.r),
              child: SizedBox(
                height: 463.h,
                width: 333.w,
                child: Wrap(
                  clipBehavior: Clip.antiAlias,
                  direction: Axis.vertical,
                  spacing: 9.h,
                  runSpacing: 9.w,
                  children: [
                    CustomFadeInLeft(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/1.jpg',
                        height: 97.95.h,
                      ),
                    ),
                    CustomFadeInLeft(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/2.jpg',
                        height: 196.1.h,
                      ),
                    ),
                    CustomFadeInLeft(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/3.jpg',
                        height: 147.h,
                      ),
                    ),
                    CustomFadeInDown(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/4.jpg',
                        height: 155.h,
                      ),
                    ),
                    CustomFadeInDown(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/5.jpg',
                        height: 183.h,
                      ),
                    ),
                    CustomFadeInUp(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/6.jpg',
                        height: 103.h,
                      ),
                    ),
                    CustomFadeInRight(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/7.jpg',
                        height: 143.h,
                      ),
                    ),
                    CustomFadeInRight(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/8.jpg',
                        height: 189.h,
                      ),
                    ),
                    CustomFadeInRight(
                      duration: 500,
                      child: OnboardingWidget(
                        image: 'assets/images/onboarding/9.jpg',
                        height: 109.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 330.w,
              child: Text(
                'titleOnBoard'.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.r),
              child: SizedBox(
                width: 342.w,
                child: Text(
                  'onboardingText'.tr(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: const Color(0xFF2D2D66),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const StartButton(),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await CacheHelper.set(
          CacheKeys.isFirstOpen,
          true,
        );
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainLayoutPage(),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kMainColor,
            fixedSize: Size(327.w, 56.h),
          ),
          onPressed: null,
          child: Text(
            'startOnBoard'.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              height: 0.07.h,
            ),
          ),
        ),
      ),
    );
  }
}
