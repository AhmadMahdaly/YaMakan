import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/fayoum_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class FayoumRayanTour extends StatelessWidget {
  const FayoumRayanTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          FayoumPlaces().all[9].image!,
          FayoumPlaces().all[1].image!,
          FayoumPlaces().all[12].image!,
          FayoumPlaces().all[10].image!,
        ],
        tourName: 'RayanTour'.tr(),
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: FayoumPlaces().all[9].page,
                image: FayoumPlaces().all[9].image,
                point: 'Point1'.tr(),
                placeName: FayoumPlaces().all[9].text,
                time: 'Hours1'.tr(),
                fees: 'EGP25'.tr(),
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: FayoumPlaces().all[1].page,
                image: FayoumPlaces().all[1].image,
                point: 'Point2'.tr(),
                placeName: FayoumPlaces().all[1].text,
                time: 'Hours3'.tr(),
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
                placePage: FayoumPlaces().all[12].page,
                image: FayoumPlaces().all[12].image,
                point: 'Point3'.tr(),
                placeName: FayoumPlaces().all[12].text,
                time: 'Hours1'.tr(),
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
                placePage: FayoumPlaces().all[10].page,
                image: FayoumPlaces().all[10].image,
                point: TR().endPoint,
                placeName: FayoumPlaces().all[10].text,
                time: 'Hours2'.tr(),
                fees: '100 ${"EGP".tr()}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
