import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/features/activity/data/models/activity_data_model.dart';
import 'package:yamakan/features/activity/data/models/activity_page_model.dart';
import 'package:yamakan/features/activity/presentation/views/activity_page_widget.dart';
import 'package:yamakan/features/activity/presentation/views/widgets/activity_item_card.dart';

class ActivitiesListItemsWidget extends StatelessWidget {
  const ActivitiesListItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final activitiesList = <ActivityDataModel>[
      /// كاياك
      ActivityDataModel(
        image: 'assets/images/items/category/other/الكاياك.jpg',
        text: 'KayakT'.tr(),
        activityLocation: 'KayakLocation'.tr(),
        price: '300',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/category/other/الكاياك.jpg',
            name: 'KayakActivityItem'.tr(),
            location: 'KayakLocation'.tr(),
            locationUrl: 'https://maps.app.goo.gl/6j6DkFXg13QhMRxq9',
            bookUrl: 'https://www.instagram.com/zamalekkayak',
            overview: 'KayakOverview'.tr(),
            fees: '300 ${"EGP".tr()}',
          ),
        ),
      ),

      /// فخار
      ActivityDataModel(
        image: 'assets/images/items/category/activities/فخار.jpg',
        text: 'PotteryFormation'.tr(),
        activityLocation: 'OldCairo'.tr(),
        price: '--',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/category/activities/فخار.jpg',
            name: 'PotteryFormation'.tr(),
            location: '${"PotteryVillage".tr()} - ${"OldCairo".tr()}',
            locationUrl: 'https://maps.app.goo.gl/EYDD8tDiwVG8tVQQ9',
            bookUrl: 'https://www.facebook.com/pottery.school/',
            overview: 'PotteryFormationAbout'.tr(),
            fees: 'FeesOnOrder'.tr(),
          ),
        ),
      ),

      /// دراجات
      ActivityDataModel(
        image: 'assets/images/items/category/activities/دراجات.jpg',
        text: 'Bike'.tr(),
        activityLocation: 'BikePark'.tr(),
        price: '25',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/category/activities/الدراجات (1).jpg',
            name: 'Bike'.tr(),
            location: '${"Mostakbal".tr()} - ${"Cairo".tr()}',
            locationUrl: 'https://maps.app.goo.gl/mLkzLzwnv7nV9gaw9',
            bookUrl: 'https://www.facebook.com/bikes.park.FC',
            overview: 'BikeParkAbout'.tr(),
            fees: '25 ${"EGP".tr()}',
          ),
        ),
      ),

      /// هورس
      ActivityDataModel(
        image: 'assets/images/items/category/other/هورسينج.jpg',
        text: 'HoursingActivityItem'.tr(),
        activityLocation: 'HoursingLocation'.tr(),
        price: '350',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/category/other/هورسينج.jpg',
            name: 'HoursingActivityItem'.tr(),
            location: 'HoursingLocation'.tr(),
            locationUrl: 'https://maps.app.goo.gl/yvJ7K64DmLJzagzP9',
            bookUrl: 'https://www.facebook.com/pegasus.equestrian.dreamland',
            overview: 'HoursingOverview'.tr(),
            fees: '350 ${"EGP".tr()}',
          ),
        ),
      ),

      /// تلوين
      ActivityDataModel(
        image: 'assets/images/items/category/other/حرب تلوين.png',
        text: 'PaintballActivityItem'.tr(),
        activityLocation: 'PaintballLocation'.tr(),
        price: '1050',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/category/other/حرب تلوين.png',
            name: 'PaintballActivityItem'.tr(),
            location: 'PaintballLocation'.tr(),
            locationUrl: 'https://maps.app.goo.gl/V8FBZH2Sr7AWdRbA6',
            bookUrl:
                'https://www.instagram.com/explore/locations/1034022164/rehab-sporting-club-paintball-kee-action-sports/',
            overview: 'PaintballOverview'.tr(),
            fees: '1050 ${"EGP".tr()}',
          ),
        ),
      ),

      /// النجوم
      ActivityDataModel(
        image: 'assets/images/items/cities/fayoum/النجوم.jpg',
        text: 'Stargazing'.tr(),
        activityLocation: 'ValleyWhales'.tr(),
        price: '1330',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/cities/fayoum/النجوم.jpg',
            name: 'Stargazing'.tr(),
            location: 'ValleyWhales'.tr(),
            locationUrl: 'https://maps.app.goo.gl/PRyMJ4xpEtNbpQNw9',
            bookUrl:
                'https://www.ootlah.com/ar/attractions-EGfagfai-oth4881-camp-trip-in-wadi-el-hitan-in-fayoum.html',
            overview: 'StarsFayoum'.tr(),
            fees: '1330 ${"EGP".tr()}',
          ),
        ),
      ),

      /// رمال
      ActivityDataModel(
        image: 'assets/images/items/cities/fayoum/رمال زح.jpg',
        text: 'Sand'.tr(),
        activityLocation: 'WadiRayan'.tr(),
        price: '400',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/cities/fayoum/رمال زح.jpg',
            name: 'Sand'.tr(),
            location: 'WadiRayan'.tr(),
            locationUrl: 'https://maps.app.goo.gl/mVLLc789MrC6a6Ji7',
            bookUrl:
                'https://www.agazatclub.travel/day-trips/fayoum/wadi-el-rayan-5',
            overview: 'SandAbout'.tr(),
            fees: '400 ${"EGP".tr()}',
          ),
        ),
      ),

      /// بالون
      ActivityDataModel(
        image: 'assets/images/items/category/other/ايربالون.jpg',
        text: 'AirBalloonActivityItem'.tr(),
        activityLocation: 'Luxer'.tr(),
        price: '1200',
        page: ActivitiesPageWidget(
          page: ActivityPageModel(
            image: 'assets/images/items/category/other/ايربالون.jpg',
            name: 'AirBalloonActivityItem'.tr(),
            location: 'Luxer'.tr(),
            locationUrl: 'https://maps.app.goo.gl/t5U7cUGBVpdddvB98',
            bookUrl:
                'https://www.tripadvisor.com.eg/Attractions-g294205-Activities-c61-t213-Luxor_Nile_River_Valley.html',
            overview: 'AirBalloonOverview'.tr(),
            fees: 'AirBalloonFees'.tr(),
          ),
        ),
      ),
    ];

    return ListView.builder(
      primary: true,
      padding: EdgeInsets.symmetric(
        horizontal: 11.sp,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: activitiesList.length,
      itemBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.sp,
          ),
          child: ActivityItemCard(
            item: activitiesList[index],
          ),
        );
      },
    );
  }
}
