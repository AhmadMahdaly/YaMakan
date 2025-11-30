import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/core/shared_widgets/custom_button.dart';
import 'package:yamakan/features/activity/data/models/activity_page_model.dart';
import 'package:yamakan/features/place/presentation/views/widgets/title_place_text.dart';
import 'package:yamakan/features/place/presentation/views/widgets/top_page_button.dart';

class ActivitiesPageWidget extends StatefulWidget {
  const ActivitiesPageWidget({required this.page, super.key});
  final ActivityPageModel page;

  @override
  State<ActivitiesPageWidget> createState() => _ActivitiesPageWidgetState();
}

class _ActivitiesPageWidgetState extends State<ActivitiesPageWidget> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchBookUrl() async {
    if (!await launchUrl(_urlBook)) {
      throw Exception('Could not launch $_urlBook');
    }
  }

  late final Uri _urlBook = Uri.parse(widget.page.bookUrl!);
  late final Uri _url = Uri.parse(widget.page.locationUrl!);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.sp,
        leadingWidth: 52.sp,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: TopPageButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 22.sp,
              color: kMainColor,
            ),
          ),
        ),
        // actions: [
        //   SizedBox(
        //     width: 8.sp,
        //   ),
        //   TopPageButton(
        //     icon: Icon(
        //       Icons.bookmark_add_outlined,
        //       size: 22.sp,
        //       color: kMainColor,
        //     ),
        //   ),
        //   SizedBox(
        //     width: 6.sp,
        //   ),
        //   TopPageButton(
        //     icon: Icon(
        //       Icons.share,
        //       size: 22.sp,
        //       color: kMainColor,
        //     ),
        //   ),
        //   SizedBox(
        //     width: 8.sp,
        //   ),
        // ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            expandedHeight: 260.sp,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.page.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Text(
                widget.page.name!,
                style: TextStyle(
                  color: kTitleSideColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.sp,
              ),
              child: GestureDetector(
                onTap: _launchUrl,
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 12.sp,
                      color: kShadowColor,
                    ),
                    SizedBox(width: 5.sp),
                    Text(
                      widget.page.location!,
                      style: TextStyle(
                        color: const Color(0xFF71717A),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: TitlePlacePageTextWidget(
              title: 'OverviewTitle'.tr(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.sp,
              ),
              child: Text(
                widget.page.overview!,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: const Color(0xFF878787),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: TitlePlacePageTextWidget(
              title: 'FeesTitle'.tr(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.sp,
              ),
              child: Text(
                widget.page.fees!,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: const Color(0xFF878787),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 16.sp),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: 24.sp,
          // top: 8.sp,
          right: 16.sp,
          left: 16.sp,
        ),
        child: GestureDetector(
          onTap: _launchBookUrl,
          child: CustomButton(
            text: 'BookGuide'.tr(),
          ),
        ),
      ),
    );
  }
}
