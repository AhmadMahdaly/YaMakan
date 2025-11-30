import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/core/shared_widgets/custom_button.dart';
import 'package:yamakan/features/place/data/models/page_model.dart';

class BuyTicketButton extends StatefulWidget {
  const BuyTicketButton({required this.place, super.key});
  final PageModel place;

  @override
  State<BuyTicketButton> createState() => _BuyTicketButtonState();
}

class _BuyTicketButtonState extends State<BuyTicketButton> {
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
    widget.place.bookUrl!,
  );

  @override
  Widget build(BuildContext context) {
    return widget.place.bookUrl == null
        ? const SizedBox()
        : Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.sp,
              vertical: 16.sp,
            ),
            child: Column(
              children: [
                Text(
                  'TicketPlaces'.tr(),
                  style: TextStyle(
                    color: kTitleSideColor,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.5.sp,
                  ),
                ),
                SizedBox(height: 8.sp),
                GestureDetector(
                  onTap: _launchUrl,
                  child: CustomButton(
                    text: 'BuyTecket'.tr(),
                  ),
                ),
              ],
            ),
          );
  }
}
