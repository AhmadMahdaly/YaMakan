import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/aswan_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class AswanHistoricalTour extends StatelessWidget {
  const AswanHistoricalTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          AswanPlaces().all[3].image!,
          AswanPlaces().all[1].image!,
          AswanPlaces().all[5].image!,
          AswanPlaces().all[7].image!,
        ],
        tourName: TR().historicalTour,
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AswanPlaces().all[3].page,
                image: AswanPlaces().all[3].image,
                point: 'Point1'.tr(),
                placeName: AswanPlaces().all[3].text,
                time: 'Hours1'.tr(),
                fees: '20 ${TR().egyPound}',
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AswanPlaces().all[1].page,
                image: AswanPlaces().all[1].image,
                point: 'Point2'.tr(),
                placeName: AswanPlaces().all[1].text,
                time: TR().hours2,
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
                placePage: AswanPlaces().all[5].page,
                image: AswanPlaces().all[5].image,
                point: 'Point3'.tr(),
                placeName: AswanPlaces().all[5].text,
                time: 'Hours2'.tr(),
                fees: '40 ${TR().egyPound}',
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: AswanPlaces().all[7].page,
                image: AswanPlaces().all[7].image,
                point: TR().endPoint,
                placeName: AswanPlaces().all[7].text,
                time: 'Hours1'.tr(),
                fees: '40 ${TR().egyPound}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
