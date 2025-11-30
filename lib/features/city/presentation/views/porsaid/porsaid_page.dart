import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/portsaid_places.dart';
import 'package:yamakan/features/city/data/models/city_page_model.dart';
import 'package:yamakan/features/city/presentation/views/porsaid/porsaid_grid_places.dart';
import 'package:yamakan/features/city/presentation/views/porsaid/porsaid_list.dart';
import 'package:yamakan/features/city/presentation/views/porsaid/tours/city_tour.dart';
import 'package:yamakan/features/city/presentation/views/porsaid/tours/food_tour.dart';
import 'package:yamakan/features/city/presentation/widgets/city_page_widget.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';

class PortsaidPage extends StatelessWidget {
  const PortsaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CityPageWidget(
        city: CityPageModel(
          qtyPlaces: PortsaidPlaces().all,
          image: 'assets/images/items/cities/porsaid/Port Said.jpg',
          name: TR().portsaid,
          seeAll: const PortsaidGrid(),
          widgetList: const PortsaidList(),
        ),
        cards: [
          TourCardModel(
            cityName: TR().portsaid,
            tourName: 'FerryFishMarket'.tr(),
            list4Image: [
              PortsaidPlaces().all[1].image!,
              PortsaidPlaces().all[7].image!,
              PortsaidPlaces().all[5].image!,
              PortsaidPlaces().all[6].image!,
            ],
            tourPage: const PortsaidFoodTour(),
            time: 'Hours7'.tr(),
            fees: '-- ${TR().egyPound}',
          ),
          TourCardModel(
            cityName: TR().portsaid,
            tourName: TR().cityTour,
            list4Image: [
              PortsaidPlaces().all[2].image!,
              PortsaidPlaces().all[1].image!,
              PortsaidPlaces().all[0].image!,
              PortsaidPlaces().all[5].image!,
            ],
            tourPage: const PortsaidCityTour(),
            time: 'Hours6'.tr(),
            fees: '5 ${"EGP".tr()}',
          ),
        ],
      ),
    );
  }
}
