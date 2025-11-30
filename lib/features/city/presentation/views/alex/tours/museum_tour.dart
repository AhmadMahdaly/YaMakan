import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/alex_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class AlexMuseumTour extends StatelessWidget {
  const AlexMuseumTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          AlexPlaces().all[9].image!,
          AlexPlaces().all[11].image!,
          AlexPlaces().all[12].image!,
          AlexPlaces().all[13].image!,
        ],
        tourName: TR().museumTour,
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AlexPlaces().all[9].page,
                image: AlexPlaces().all[9].image,
                point: 'Point1'.tr(),
                placeName: AlexPlaces().all[9].text,
                time: 'Hours1'.tr(),
                fees: TR().free,
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
                image: AlexPlaces().all[11].image,
                point: 'Point2'.tr(),
                placeName: AlexPlaces().all[11].text,
                time: 'Hours2'.tr(),
                fees: '40 ${"EGP".tr()}',
                placePage: AlexPlaces().all[11].page,
              ),
            ),
            //
            TourTime(
              carTime: TR().car5m1km,
              walkTime: TR().walk15m,
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AlexPlaces().all[12].page,
                image: AlexPlaces().all[12].image,
                point: 'Point3'.tr(),
                placeName: AlexPlaces().all[12].text,
                time: 'Hours2'.tr(),
                fees: '20 ${TR().egyPound}',
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
                placePage: AlexPlaces().all[13].page,
                image: AlexPlaces().all[13].image,
                point: TR().endPoint,
                placeName: AlexPlaces().all[13].text,
                time: 'Hours2'.tr(),
                fees: '20 ${"EGP".tr()}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
