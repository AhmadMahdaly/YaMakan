import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/giza_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class GizaHistoricalTour extends StatelessWidget {
  const GizaHistoricalTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          GizaPlaces().all[1].image!,
          GizaPlaces().all[2].image!,
          GizaPlaces().all[0].image!,
          GizaPlaces().all[4].image!,
        ],
        tourName: TR().historicalTour,
        nomDestinations: 5,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: GizaPlaces().all[1].page,
                image: GizaPlaces().all[1].image,
                point: 'Point1'.tr(),
                placeName: GizaPlaces().all[1].text,
                time: 'Hours1'.tr(),
                fees: '10 ${TR().egyPound}',
              ),
            ),
            TourTime(
              carTime: 'Car5m1km'.tr(),
              walkTime: 'Walk15m'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: GizaPlaces().all[2].page,
                image: GizaPlaces().all[2].image,
                point: 'Point2'.tr(),
                placeName: GizaPlaces().all[2].text,
                time: 'Hours1'.tr(),
                fees: '-- ${"EGP".tr()}',
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: GizaPlaces().all[0].page,
                image: GizaPlaces().all[0].image,
                placeName: GizaPlaces().all[0].text,
                point: 'Point3'.tr(),
                time: 'Hours2'.tr(),
                fees: '40 ${"EGP".tr()}',
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: GizaPlaces().all[4].page,
                image: GizaPlaces().all[4].image,
                placeName: GizaPlaces().all[4].text,
                point: 'Point4'.tr(),
                time: 'Hours2'.tr(),
                fees: '40 ${"EGP".tr()}',
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: GizaPlaces().all[5].page,
                image: GizaPlaces().all[5].image,
                placeName: GizaPlaces().all[5].text,
                point: TR().endPoint,
                time: 'Hours2'.tr(),
                fees: '10 ${"EGP".tr()}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
