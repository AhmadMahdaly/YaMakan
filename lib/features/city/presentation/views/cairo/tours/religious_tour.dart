import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/cairo_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class CairoReligiousTour extends StatelessWidget {
  const CairoReligiousTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          CairoPlaces().all[20].image!,
          CairoPlaces().all[26].image!,
          CairoPlaces().all[33].image!,
          CairoPlaces().all[12].image!,
        ],
        tourName: 'ReligiousTour'.tr(),
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: CairoPlaces().all[20].page,
                image: CairoPlaces().all[20].image,
                point: 'Point1'.tr(),
                placeName: CairoPlaces().all[20].text,
                time: 'Hours2'.tr(),
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
                placePage: CairoPlaces().all[26].page,
                image: CairoPlaces().all[26].image,
                point: 'Point2'.tr(),
                placeName: CairoPlaces().all[26].text,
                time: 'Hours2'.tr(),
                fees: '20 ${TR().egyPound}',
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
                placePage: CairoPlaces().all[33].page,
                image: CairoPlaces().all[33].image,
                point: 'Point3'.tr(),
                placeName: CairoPlaces().all[33].text,
                time: 'Hours1'.tr(),
                fees: 'Free'.tr(),
              ),
            ),

            ///
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: CairoPlaces().all[12].page,
                image: CairoPlaces().all[12].image,
                point: TR().endPoint,
                placeName: CairoPlaces().all[12].text,
                time: 'Hours2'.tr(),
                fees: 'Free'.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
