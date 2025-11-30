import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/core/shared_widgets/custom_button.dart';
import 'package:yamakan/features/events/data/models/event_page_model.dart';

class EventsPagesWidget extends StatefulWidget {
  const EventsPagesWidget({required this.page, super.key});

  final EventPageModel page;

  @override
  State<EventsPagesWidget> createState() => _EventsPagesWidgetState();
}

class _EventsPagesWidgetState extends State<EventsPagesWidget> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchBookUrl() async {
    if (!await launchUrl(_urlBool)) {
      throw Exception('Could not launch $_urlBool');
    }
  }

  late final Uri _url = Uri.parse(widget.page.locationUrl!);

  late final Uri _urlBool = Uri.parse(widget.page.bookUrl!);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 50.sp,
            leadingWidth: 52.sp,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24.sp,
                color: kMainColor,
              ),
            ),
            floating: true,
            expandedHeight: 300.sp,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.page.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: Text(
                widget.page.name!,
                style: TextStyle(
                  color: const Color(0xFF7A7A7A),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: GestureDetector(
                onTap: _launchUrl,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/home_page/events/mynaui_location.svg',
                    ),
                    SizedBox(
                      width: 4.sp,
                    ),
                    Text(
                      widget.page.locationName!,
                      style: TextStyle(
                        color: const Color(0xFF71717A),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: Text(
                'AboutEvent'.tr(),
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: Text(
                widget.page.about!,
                style: TextStyle(
                  color: const Color(0xFF878787),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: Text(
                'DateTime'.tr(),
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: Text(
                '${TR().wednesday}\n 8 ${TR().to} 11 ${TR().pm}',
                style: TextStyle(
                  color: const Color(0xFF878787),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: Text(
                'FeesTitle'.tr(),
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.sp,
                right: 16.sp,
                left: 16.sp,
              ),
              child: Text(
                widget.page.fees!,
                style: TextStyle(
                  color: const Color(0xFF878787),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 45.sp),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.sp,
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: _launchBookUrl,
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: CustomButton(
            text: 'BookGuide'.tr(),
          ),
        ),
      ),
    );
  }
}
