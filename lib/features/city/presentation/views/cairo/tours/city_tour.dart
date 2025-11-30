import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/cairo_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class CairoCityTour extends StatelessWidget {
  const CairoCityTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          CairoPlaces().all[0].image!,
          CairoPlaces().all[3].image!,
          CairoPlaces().all[6].image!,
          CairoPlaces().all[9].image!,
        ],
        tourName: 'CityTour'.tr(),
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: CairoPlaces().all[0].page,
                image: CairoPlaces().all[0].image,
                point: 'Point1'.tr(),
                placeName: CairoPlaces().all[0].text,
                time: 'Hours1'.tr(),
                fees: '80 ${"EGP".tr()}',
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
                image: CairoPlaces().all[3].image,
                point: 'Point2'.tr(),
                placeName: CairoPlaces().all[3].text,
                time: 'Hours1'.tr(),
                fees: '5 ${"EGP".tr()}',
                placePage: CairoPlaces().all[3].page,
              ),
            ),

            ///
            TourTime(
              carTime: TR().car30m15km,
              walkTime: TR().walk2h5,
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                image: CairoPlaces().all[6].image,
                point: 'Point3'.tr(),
                placeName: CairoPlaces().all[6].text,
                time: 'Hours3'.tr(),
                fees: '60 ${"EGP".tr()}',
                placePage: CairoPlaces().all[6].page,
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
                placePage: CairoPlaces().all[9].page,
                image: CairoPlaces().all[9].image,
                point: TR().endPoint,
                placeName: CairoPlaces().all[9].text,
                time: 'Hours2'.tr(),
                fees: '80 ${"EGP".tr()}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
