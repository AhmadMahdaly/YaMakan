import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/fayoum_places.dart';
import 'package:yamakan/features/city/data/models/city_page_model.dart';
import 'package:yamakan/features/city/presentation/views/fayoum/fayoum_grid_place.dart';
import 'package:yamakan/features/city/presentation/views/fayoum/fayoum_list.dart';
import 'package:yamakan/features/city/presentation/views/fayoum/tours/city_tour.dart';
import 'package:yamakan/features/city/presentation/views/fayoum/tours/rayan_tour.dart';
import 'package:yamakan/features/city/presentation/widgets/city_page_widget.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';

class FayoumPage extends StatelessWidget {
  const FayoumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CityPageWidget(
        city: CityPageModel(
          qtyPlaces: FayoumPlaces().all,
          image: 'assets/images/items/cities/fayoum/Fayoum.jpg',
          name: TR().fayoum,
          seeAll: const FayoumGrid(),
          widgetList: const FayoumList(),
        ),
        cards: [
          /// Tous
          TourCardModel(
            cityName: TR().fayoum,
            tourName: 'RayanTour'.tr(),
            list4Image: [
              FayoumPlaces().all[9].image!,
              FayoumPlaces().all[1].image!,
              FayoumPlaces().all[12].image!,
              FayoumPlaces().all[10].image!,
            ],
            tourPage: const FayoumRayanTour(),
            time: 'Hours7'.tr(),
            fees: '150 ${"EGP".tr()}',
          ),
          TourCardModel(
            cityName: TR().fayoum,
            tourName: TR().cityTour,
            list4Image: [
              FayoumPlaces().all[0].image!,
              FayoumPlaces().all[7].image!,
              FayoumPlaces().all[8].image!,
              FayoumPlaces().all[6].image!,
            ],
            tourPage: const FayoumCityTour(),
            time: 'Hours6'.tr(),
            fees: '10 ${"EGP".tr()}',
          ),
        ],
      ),
    );
  }
}
