import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/place/data/models/page_model.dart';

class LocationBottonWidget extends StatefulWidget {
  const LocationBottonWidget({
    required this.place,
    super.key,
  });
  final PageModel place;
  @override
  State<LocationBottonWidget> createState() => _LocationBottonWidgetState();
}

class _LocationBottonWidgetState extends State<LocationBottonWidget> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(
      _url,
    )) {
      throw Exception(
        'Could not launch $_url',
      );
    }
  }

  late final Uri _url = Uri.parse(
    widget.place.locationUrl!,
  );

  @override
  Widget build(BuildContext context) {
    return widget.place.locationTitle == null
        ? InkWell(
            onTap: _launchUrl,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.sp,
                vertical: 8.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14.sp,
                    color: kMainColor,
                  ),
                  SizedBox(width: 6.sp),
                  GestureDetector(
                    onTap: _launchUrl,
                    child: Text(
                      'SeeOnMap'.tr(),
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: kMainColor,
                        height: 0.11.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : InkWell(
            onTap: _launchUrl,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.sp,
                vertical: 16.sp,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14.sp,
                    color: kMainColor,
                  ),
                  SizedBox(width: 6.sp),
                  Text(
                    widget.place.locationTitle!,
                    style: TextStyle(
                      color: const Color(0xFF71717A),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'SeeOnMap'.tr(),
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: kMainColor,
                      height: 0.11.sp,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
