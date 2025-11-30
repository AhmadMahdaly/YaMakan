import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/four_images_widget.dart';

class TourPagePathPaint extends StatelessWidget {
  const TourPagePathPaint({
    required this.nomDestinations,
    required this.cardDestinations,
    super.key,
    this.image4,
    this.tourName,
  });
  final List<String>? image4;
  final int nomDestinations;
  final String? tourName;
  final Widget? cardDestinations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.sp,
        title: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: tourName,
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '\n$nomDestinations ${"Destinations".tr()}',
                    style: TextStyle(
                      color: const Color(0xFF404040),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 22.sp,
            color: kMainColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          /// four image in top
          Padding(
            padding: EdgeInsets.only(
              right: 24.sp,
              left: 24.sp,
              top: 8.sp,
              bottom: 8.sp,
            ),
            child: SizedBox(
              height: 75.sp,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: image4?.length,
                itemBuilder: (context, index) => FourImagesWidget(
                  images4: image4![index],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.sp),

          /// tour place cards
          cardDestinations!,
        ],
      ),
    );
  }
}
