import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/place/data/models/page_model.dart';

class ScrollImages extends StatelessWidget {
  const ScrollImages({
    required this.place,
    super.key,
  });
  final PageModel place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.sp),
      child: CarouselSlider.builder(
        itemCount: place.imagePaths!.length,
        itemBuilder: (
          BuildContext context,
          int index,
          int pageViewIndex,
        ) =>
            ClipRRect(
          borderRadius: BorderRadius.circular(15.sp),
          child: CachedNetworkImage(
            imageUrl: place.imagePaths![index],
            fit: BoxFit.cover,
            width: double.infinity,
            placeholder: (context, url) {
              return const Center(
                child: SpinKitPulse(
                  color: kMainColor,
                ),
              );
            },
            errorWidget: (context, url, error) {
              Future.delayed(const Duration(seconds: 1), () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: kMainColor,
                    content: Center(
                      child: Text(
                        'checkInternet'.tr(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              });

              return const Icon(
                Icons.signal_wifi_statusbar_connected_no_internet_4,
              );
            },
          ),
        ),
        options: CarouselOptions(
          // clipBehavior: Clip.antiAliasWithSaveLayer,
          // enableInfiniteScroll: true,
          // autoPlayCurve: Curves.fastOutSlowIn,
          // height: 400.h,
          aspectRatio: 1 / 2,
          viewportFraction: 0.90,
          // autoPlay: true,
          autoPlayInterval: const Duration(
            seconds: 5,
          ),
          autoPlayAnimationDuration: const Duration(
            milliseconds: 900,
          ),
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
