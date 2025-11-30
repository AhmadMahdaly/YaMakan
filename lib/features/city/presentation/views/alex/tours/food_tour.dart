import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/alex_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class AlexFoodTour extends StatelessWidget {
  const AlexFoodTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          AlexPlaces().restaurants[1].image!,
          AlexPlaces().cafes[0].image!,
          AlexPlaces().all[1].image!,
          AlexPlaces().restaurants[0].image!,
        ],
        tourName: TR().foodTour,
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AlexPlaces().restaurants[1].page,
                image: AlexPlaces().restaurants[1].image,
                point: 'Point1'.tr(),
                placeName: AlexPlaces().restaurants[1].text,
                time: 'Hours1'.tr(),
                fees: '-- ${"EGP".tr()}',
              ),
            ),

            ///
            TourTime(
              carTime: TR().car5m1km,
              walkTime: TR().walk15m,
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                image: AlexPlaces().cafes[0].image,
                point: 'Point2'.tr(),
                placeName: AlexPlaces().cafes[0].text,
                time: 'Hours2'.tr(),
                fees: '-- ${"EGP".tr()}',
                placePage: AlexPlaces().cafes[0].page,
              ),
            ),

            ///
            TourTime(
              carTime: TR().car5m1km,
              walkTime: TR().walk15m,
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AlexPlaces().all[1].page,
                image: AlexPlaces().all[1].image,
                point: 'Point3'.tr(),
                placeName: AlexPlaces().all[1].text,
                time: 'Hours2'.tr(),
                fees: 'Free'.tr(),
              ),
            ),

            ///
            TourTime(
              carTime: TR().car15m5km,
              walkTime: TR().walk1h,
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AlexPlaces().restaurants[0].page,
                image: AlexPlaces().restaurants[0].image,
                point: TR().endPoint,
                placeName: AlexPlaces().restaurants[0].text,
                time: 'Hours1'.tr(),
                fees: '-- ${"EGP".tr()}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
