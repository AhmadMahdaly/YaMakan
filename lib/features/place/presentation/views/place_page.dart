import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/animation/animation_do.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/place/data/models/page_model.dart';
import 'package:yamakan/features/place/presentation/views/widgets/buy_ticket_button.dart';
import 'package:yamakan/features/place/presentation/views/widgets/description_text.dart';
import 'package:yamakan/features/place/presentation/views/widgets/location_botton_widget.dart';
import 'package:yamakan/features/place/presentation/views/widgets/scroll_images.dart';
import 'package:yamakan/features/place/presentation/views/widgets/title_place_text.dart';
import 'package:yamakan/features/place/presentation/views/widgets/top_page_button.dart';

class PlacePageCategory extends StatelessWidget {
  const PlacePageCategory({required this.place, super.key});
  final PageModel place;

  // bool isChanging = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
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
        //   CustomFadeInDown(
        //     duration: 400,
        //     child: TopPageButton(
        //       icon: Icon(
        //         Icons.bookmark_add_outlined,
        //         size: 22.sp,
        //         color: kMainColor,
        //       ),
        //     ),
        //   ),
        //   SizedBox(
        //     width: 6.sp,
        //   ),
        //   CustomFadeInDown(
        //     duration: 400,
        //     child: TopPageButton(
        //       icon: Icon(
        //         Icons.share,
        //         size: 22.sp,
        //         color: kMainColor,
        //       ),
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

            //   GestureDetector(
            //     onTap: () {
            //       setState(
            //         () {
            //           setState(
            //             () {
            //               isChanging = !isChanging;
            //             },
            //           );
            //         },
            //       );
            //     },
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //       child: AnimatedCrossFade(
            //         firstChild: const Icon(
            //           Icons.favorite_outline_outlined,
            //           size: 40,
            //           color: Color(0xFF0DBAA9),
            //         ),
            //         secondChild: const Icon(
            //           Icons.favorite,
            //           size: 40,
            //           color: Color(0xFF0DBAA9),
            //         ),
            //         crossFadeState: isChanging
            //             ? CrossFadeState.showFirst
            //             : CrossFadeState.showSecond,
            //         duration: const Duration(milliseconds: 100),
            //       ),
            //     ),
            //   ),
            // ],
            expandedHeight: 260.sp,
            flexibleSpace: FlexibleSpaceBar(
              /// images
              background: ScrollImages(place: place),
            ),
          ),

          /// Name
          SliverToBoxAdapter(
            child: CustomFadeInLeft(
              duration: 500,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 24.sp,
                  left: 16.sp,
                  right: 16.sp,
                ),
                child: Text(
                  place.placeName!,
                  style: TextStyle(
                    color: const Color(0xFF7A7A7A),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          /// Location
          SliverToBoxAdapter(
            child: CustomFadeInRight(
              duration: 500,
              child: LocationBottonWidget(place: place),
            ),
          ),

          /// Desc text
          SliverToBoxAdapter(
            child: CustomFadeInLeft(
              duration: 600,
              child: TitlePlacePageTextWidget(
                title: 'DescriptionTitle'.tr(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: place.openingHours == null && place.tickets == null
                ? CustomFadeInLeft(
                    duration: 700,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.sp,
                        vertical: 8.sp,
                      ),
                      child: Text(
                        place.descriptionText!,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w200,
                          height: 1.5,
                        ),
                      ),
                    ),
                  )
                : CustomFadeInLeft(
                    duration: 700,
                    child: DescriptionTextWidget(
                      text: place.descriptionText!,
                    ),
                  ),
          ),

          /// Opening hours
          SliverToBoxAdapter(
            child: place.openingHours == null
                ? const SizedBox()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFadeInLeft(
                        duration: 600,
                        child: TitlePlacePageTextWidget(
                          title: 'OpeningTitle'.tr(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.sp,
                          vertical: 8.sp,
                        ),
                        child: SizedBox(
                          width: 335.sp,
                          child: CustomFadeInLeft(
                            duration: 700,
                            child: Text(
                              place.openingHours!,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),

          /// Fees
          SliverToBoxAdapter(
            child: place.tickets == null
                ? const SizedBox()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFadeInLeft(
                        duration: 600,
                        child: TitlePlacePageTextWidget(
                          title: 'TicketsTitle'.tr(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.sp,
                          vertical: 8.sp,
                        ),
                        child: SizedBox(
                          width: 335.sp,
                          child: CustomFadeInLeft(
                            duration: 700,
                            child: Text(
                              place.tickets!,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          SliverToBoxAdapter(
            child: CustomFadeInUp(
              duration: 600,
              child: BuyTicketButton(place: place),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 14.sp),
          ),
        ],
      ),
    );
  }
}
