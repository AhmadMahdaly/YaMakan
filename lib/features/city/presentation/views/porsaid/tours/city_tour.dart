import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/portsaid_places.dart';
import 'package:yamakan/features/tours/data/models/tour_place_card_model.dart';
import 'package:yamakan/features/tours/presentation/views/tour_page.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_place_card_widget.dart';
import 'package:yamakan/features/tours/presentation/views/widgets/tour_time.dart';

class PortsaidCityTour extends StatelessWidget {
  const PortsaidCityTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TourPagePathPaint(
        image4: [
          PortsaidPlaces().all[2].image!,
          PortsaidPlaces().all[1].image!,
          PortsaidPlaces().all[0].image!,
          PortsaidPlaces().all[5].image!,
        ],
        tourName: 'CityTour'.tr(),
        nomDestinations: 4,
        cardDestinations: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: PortsaidPlaces().all[2].page,
                image: PortsaidPlaces().all[2].image,
                point: 'Point1'.tr(),
                placeName: PortsaidPlaces().all[2].text,
                time: 'Hours1'.tr(),
                fees: 'Free'.tr(),
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk15m'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: PortsaidPlaces().all[1].page,
                image: PortsaidPlaces().all[1].image,
                point: 'Point2'.tr(),
                placeName: PortsaidPlaces().all[1].text,
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
                placePage: PortsaidPlaces().all[0].page,
                image: PortsaidPlaces().all[0].image,
                point: 'Point3'.tr(),
                placeName: PortsaidPlaces().all[0].text,
                time: 'Hours2'.tr(),
                fees: 'EGP5'.tr(),
              ),
            ),
            TourTime(
              carTime: 'Car15m5km'.tr(),
              walkTime: 'Walk1h'.tr(),
            ),

            ///
            TourPlaceCardWidget(
              card: TourPlaceCardModel(
                placePage: PortsaidPlaces().all[5].page,
                image: PortsaidPlaces().all[5].image,
                point: TR().endPoint,
                placeName: PortsaidPlaces().all[5].text,
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
