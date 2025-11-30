import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/animation/animation_do.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/city/data/models/city_page_model.dart';
import 'package:yamakan/features/home/presentation/views/widgets/title_home_text.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_card_widget.dart';

class CityPageWidget extends StatelessWidget {
  const CityPageWidget({
    required this.city,
    required this.cards,
    super.key,
  });

  final CityPageModel city;
  final List<TourCardModel> cards;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50.sp,
                      right: 16.sp,
                      left: 16.sp,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 35.sp,
                      height: 35.sp,
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(25),
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 22.sp,
                          color: kMainColor,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      16.sp,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          city.name!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            height: 0.09.sp,
                          ),
                        ),
                        Text(
                          '\n${city.qtyPlaces!.length} '
                          '${"Places50More".tr()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              background: Image.asset(
                city.image!,
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(
                150.sp,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 8.sp,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                TitleHomePageTextWidget(
                  title: '${"TopAttractionsIn".tr()} ${city.name}',
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.sp,
                    // left: 8.w,
                    bottom: 8.sp,
                    // right: 16.w,
                  ),
                  child: TextButton(
                    child: Text(
                      'SeeAll'.tr(),
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationColor: kMainColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => city.seeAll!,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 16.sp,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CustomFadeInRight(
              duration: 600,
              child: SizedBox(
                height: 100.sp,
                child: city.widgetList,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CustomFadeInRight(
              duration: 500,
              child: TitleHomePageTextWidget(
                title: 'Tours'.tr(),
              ),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) {
              return CustomFadeInRight(
                duration: 700,
                child: SizedBox(
                  height: 125.sp,
                  child: TourCardWidget(
                    cards: cards[index],
                  ),
                ),
              );
            },
            itemCount: cards.length,
          ),
        ],
      ),
    );
  }
}
