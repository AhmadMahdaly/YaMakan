import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/features/events/data/models/event_page_model.dart';

class EventsCardWidget extends StatelessWidget {
  const EventsCardWidget({required this.event, super.key});
  final EventPageModel event;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8.sp,
        left: 16.sp,
        right: 16.sp,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => event.eventPage!,
            ),
          );
        },
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
          child: Padding(
            padding: EdgeInsets.all(
              12.sp,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 100.sp,
                  height: 100.sp,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.sp),
                    child: Image.asset(
                      event.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 5.sp),
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.locationName!,
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        event.name!,
                        style: TextStyle(
                          color: const Color(0xFF404040),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.sp),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 24.sp,
                          ),
                          SizedBox(width: 4.sp),

                          ///
                          /// Day
                          Text(
                            TR().wednesday,
                            style: TextStyle(
                              color: const Color(0xFF71717A),
                              fontSize: 12.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 8.sp),
                          Icon(
                            Icons.watch_later_outlined,
                            size: 24.sp,
                          ),
                          SizedBox(width: 4.sp),

                          ///
                          /// Time
                          Text(
                            '08 ${TR().to} 11 ${TR().pm}',
                            style: TextStyle(
                              color: const Color(0xFF71717A),
                              fontSize: 12.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
