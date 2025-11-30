import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/animation/animation_do.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/circle_point.dart';

class TourPlaceCardWidget extends StatelessWidget {
  const TourPlaceCardWidget({
    required this.card,
    super.key,
  });

  final TourPlaceCardModel card;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => card.placePage!,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PointPath(),
            SizedBox(
              width: 18.sp,
            ),
            CustomFadeInRight(
              duration: 500,
              child: Container(
                /// Size & shape of card
                width: 310.sp,
                height: 90.sp,
                clipBehavior: Clip.hardEdge,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      8.sp,
                    ),
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
                    /// image
                    Image.asset(
                      card.image!,
                      height: 91.sp,
                      width: 65.sp,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.sp),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// No. of point
                        Text(
                          card.point!,
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        /// Name of place
                        Text(
                          card.placeName!,
                          style: TextStyle(
                            color: const Color(0xFF404040),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4.sp),
                        Row(
                          children: [
                            /// time
                            Icon(
                              Icons.access_time,
                              size: 13.sp,
                            ),
                            SizedBox(width: 4.sp),
                            Text(
                              card.time!,
                              style: TextStyle(
                                color: const Color(0xFF878787),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 20.sp),

                            /// fees
                            Icon(
                              Icons.money_outlined,
                              size: 13.sp,
                            ),
                            SizedBox(width: 4.sp),
                            Text(
                              card.fees!,
                              style: TextStyle(
                                color: const Color(0xFF878787),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
    );
  }
}
