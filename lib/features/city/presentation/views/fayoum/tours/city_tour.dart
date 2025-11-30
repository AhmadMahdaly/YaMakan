import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/fayoum_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class FayoumCityTour extends StatelessWidget {
  const FayoumCityTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          FayoumPlaces().all[0].image!,
          FayoumPlaces().all[7].image!,
          FayoumPlaces().all[8].image!,
          FayoumPlaces().all[6].image!,
        ],
        tourName: TR().cityTour,
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: FayoumPlaces().all[0].page,
                image: FayoumPlaces().all[0].image,
                point: 'Point1'.tr(),
                placeName: FayoumPlaces().all[0].text,
                time: 'Hours2'.tr(),
                fees: 'Free'.tr(),
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: FayoumPlaces().all[7].page,
                image: FayoumPlaces().all[7].image,
                point: 'Point2'.tr(),
                placeName: FayoumPlaces().all[7].text,
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
                placePage: FayoumPlaces().all[8].page,
                image: FayoumPlaces().all[8].image,
                point: 'Point3'.tr(),
                placeName: FayoumPlaces().all[8].text,
                time: 'Hours1'.tr(),
                fees: 'Free'.tr(),
              ),
            ),
            TourTime(
              carTime: 'Car5m1km'.tr(),
              walkTime: 'Walk15m'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: FayoumPlaces().all[6].page,
                image: FayoumPlaces().all[6].image,
                point: TR().endPoint,
                placeName: FayoumPlaces().all[6].text,
                time: 'Hours1'.tr(),
                fees: 'Free'.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
