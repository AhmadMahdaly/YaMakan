import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/activity/data/models/activity_data_model.dart';

class ActivityItemCard extends StatelessWidget {
  const ActivityItemCard({required this.item, super.key});
  final ActivityDataModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => item.page!),
      ),
      child: Container(
        margin: EdgeInsets.only(
          bottom: 16.sp,
        ),
        width: 175.sp,
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.sp),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 8,
              offset: Offset(0, 2),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Activity Image
            Container(
              margin: EdgeInsets.all(8.sp),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.sp),
              ),
              width: 160.sp,
              height: 96.sp,
              child: Image.asset(
                item.image!,
                fit: BoxFit.cover,
              ),
            ),

            /// Activity Name
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.sp,
              ),
              child: Text(
                item.text!,
                style: TextStyle(
                  color: const Color(0xFF2B2B2B),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            /// Activity Place
            Padding(
              padding: EdgeInsets.only(
                top: 8.sp,
                left: 8.sp,
                right: 8.sp,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 15.sp,
                    color: const Color(0xFF71717A),
                  ),
                  SizedBox(width: 4.sp),
                  Text(
                    item.activityLocation!,
                    style: TextStyle(
                      color: const Color(0xFF71717A),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: 5.sp,
                right: 16.sp,
                bottom: 4.sp,
                left: 16.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${'perPerson'.tr()} ',
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: item.price,
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' ${'EGP'.tr()}',
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.sp),
          ],
        ),
      ),
    );
  }
}
