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
    final place1 = CairoPlaces().all[23];
    final place2 = CairoPlaces().all[29];
    final place3 = CairoPlaces().all[36];
    final place4 = CairoPlaces().all[12];
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          place1.image!,
          place2.image!,
          place3.image!,
          place4.image!,
        ],
        tourName: 'ReligiousTour'.tr(),
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: place1.page,
                image: place1.image,
                point: 'Point1'.tr(),
                placeName: place1.text,
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
                placePage: place2.page,
                image: place2.image,
                point: 'Point2'.tr(),
                placeName: place2.text,
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
                placePage: place3.page,
                image: place3.image,
                point: 'Point3'.tr(),
                placeName: place3.text,
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
                placePage: place4.page,
                image: place4.image,
                point: TR().endPoint,
                placeName: place4.text,
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
