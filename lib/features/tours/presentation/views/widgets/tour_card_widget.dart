import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';

class TourCardWidget extends StatelessWidget {
  const TourCardWidget({required this.cards, super.key});

  final TourCardModel cards;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => cards.tourPage!,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
          vertical: 5.sp,
        ),
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.sp),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 4,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(
                height: 115.sp,
                width: 114.sp,
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Wrap(
                    /// 4 images
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 8.sp,
                    runSpacing: 8.sp,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.sp),
                        child: Image.asset(
                          cards.list4Image![0],
                          width: 44.sp,
                          height: 44.sp,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.sp),
                        child: Image.asset(
                          cards.list4Image![1],
                          width: 44.sp,
                          height: 44.sp,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.sp),
                        child: Image.asset(
                          cards.list4Image![2],
                          width: 44.sp,
                          height: 44.sp,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.sp),
                        child: Image.asset(
                          cards.list4Image![3],
                          width: 44.sp,
                          height: 44.sp,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 6.sp),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// City Name
                  Text(
                    cards.cityName!,
                    style: TextStyle(
                      color: kTitleSideColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 230.sp,
                    child: Text(
                      textAlign: TextAlign.start,
                      cards.tourName!,
                      style: TextStyle(
                        color: const Color(0xFF404040),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      /// time
                      Icon(
                        Icons.access_time,
                        size: 13.sp,
                      ),
                      SizedBox(width: 4.sp),
                      Text(
                        cards.time!,
                        style: TextStyle(
                          color: const Color(0xFF878787),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 16.sp),

                      /// fees
                      Icon(
                        Icons.money_outlined,
                        size: 13.sp,
                      ),
                      SizedBox(width: 4.sp),
                      Text(
                        cards.fees!,
                        style: TextStyle(
                          color: const Color(0xFF878787),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 6.sp),
                        child: Text(
                          'ExploreTitle'.tr(),
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.sp),
                      Padding(
                        padding: EdgeInsets.only(top: 4.sp),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.arrow_back_outlined,
                            applyTextScaling: true,
                            size: 16.sp,
                            color: kMainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
