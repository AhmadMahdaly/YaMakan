import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/alex_places.dart';
import 'package:yamakan/features/city/data/models/city_page_model.dart';
import 'package:yamakan/features/city/presentation/views/alex/alex_grid_places.dart';
import 'package:yamakan/features/city/presentation/views/alex/alex_list.dart';
import 'package:yamakan/features/city/presentation/views/alex/tours/city_tour.dart';
import 'package:yamakan/features/city/presentation/views/alex/tours/food_tour.dart';
import 'package:yamakan/features/city/presentation/views/alex/tours/museum_tour.dart';
import 'package:yamakan/features/city/presentation/widgets/city_page_widget.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';

class AlexPage extends StatelessWidget {
  const AlexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CityPageWidget(
        city: CityPageModel(
          qtyPlaces: AlexPlaces().all,
          image: 'assets/images/items/category/other/Alex.jpg',
          name: TR().alex,
          seeAll: const AlexGrid(),
          widgetList: const AlexItemsList(),
        ),

        /// Tours
        cards: [
          // city tour
          TourCardModel(
            cityName: TR().alex,
            tourName: TR().cityTour,
            list4Image: [
              AlexPlaces().all[4].image!,
              AlexPlaces().all[0].image!,
              AlexPlaces().all[2].image!,
              AlexPlaces().all[1].image!,
            ],
            tourPage: const AlexCityTour(),
            time: 'Hours8'.tr(),
            fees: '70 ${"EGP".tr()}',
          ),
          // museum tour
          TourCardModel(
            cityName: TR().alex,
            tourName: TR().museumTour,
            list4Image: [
              AlexPlaces().all[9].image!,
              AlexPlaces().all[11].image!,
              AlexPlaces().all[12].image!,
              AlexPlaces().all[13].image!,
            ],
            tourPage: const AlexMuseumTour(),
            time: 'Hours7'.tr(),
            fees: '80 ${"EGP".tr()}',
          ),
          // food tour
          TourCardModel(
            cityName: TR().alex,
            tourName: TR().foodTour,
            list4Image: [
              AlexPlaces().restaurants[1].image!,
              AlexPlaces().cafes[0].image!,
              AlexPlaces().all[1].image!,
              AlexPlaces().restaurants[0].image!,
            ],
            tourPage: const AlexFoodTour(),
            time: 'Hours6'.tr(),
            fees: '-- ${"EGP".tr()}',
          ),
        ],
      ),
    );
  }
}
