import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/aswan_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class AswanCityTour extends StatelessWidget {
  const AswanCityTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          AswanPlaces().all[2].image!,
          AswanPlaces().all[8].image!,
          AswanPlaces().all[10].image!,
          AswanPlaces().all[9].image!,
        ],
        tourName: TR().cityTour,
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AswanPlaces().all[2].page,
                image: AswanPlaces().all[2].image,
                point: 'Point1'.tr(),
                placeName: AswanPlaces().all[2].text,
                time: 'Hours2'.tr(),
                fees: '10 ${TR().egyPound}',
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AswanPlaces().all[8].page,
                image: AswanPlaces().all[8].image,
                point: 'Point2'.tr(),
                placeName: AswanPlaces().all[8].text,
                time: 'Hours2'.tr(),
                fees: 'EGP10'.tr(),
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AswanPlaces().all[10].page,
                image: AswanPlaces().all[10].image,
                point: 'Point3'.tr(),
                placeName: AswanPlaces().all[10].text,
                time: 'Hours2'.tr(),
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
                placePage: AswanPlaces().all[9].page,
                image: AswanPlaces().all[9].image,
                point: TR().endPoint,
                placeName: AswanPlaces().all[9].text,
                time: 'Hours2'.tr(),
                fees: '-- ${"EGP".tr()}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
