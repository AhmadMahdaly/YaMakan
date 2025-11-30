import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/giza_places.dart';
import 'package:yamakan/features/city/data/models/city_page_model.dart';
import 'package:yamakan/features/city/presentation/views/giza/giza_grid_places.dart';
import 'package:yamakan/features/city/presentation/views/giza/giza_list.dart';
import 'package:yamakan/features/city/presentation/views/giza/tours/city_tour.dart';
import 'package:yamakan/features/city/presentation/views/giza/tours/histoical_tour.dart';
import 'package:yamakan/features/city/presentation/widgets/city_page_widget.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';

class GizaPage extends StatelessWidget {
  const GizaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CityPageWidget(
        city: CityPageModel(
          qtyPlaces: GizaPlaces().all,
          image: 'assets/images/items/cities/giza.jpg',
          name: TR().giza,
          seeAll: const GizaGrid(),
          widgetList: const GizaList(),
        ),
        cards: [
          TourCardModel(
            cityName: TR().giza,
            tourName: TR().historicalTour,
            list4Image: [
              GizaPlaces().all[1].image!,
              GizaPlaces().all[2].image!,
              GizaPlaces().all[0].image!,
              GizaPlaces().all[4].image!,
            ],
            tourPage: const GizaHistoricalTour(),
            time: 'Hours8'.tr(),
            fees: '100 ${TR().egyPound}',
          ),
          TourCardModel(
            cityName: TR().giza,
            tourName: TR().cityTour,
            list4Image: [
              GizaPlaces().all[6].image!,
              GizaPlaces().all[8].image!,
              GizaPlaces().all[11].image!,
              GizaPlaces().all[10].image!,
            ],
            tourPage: const GizaCityTour(),
            time: 'Hours7'.tr(),
            fees: '410 ${"EGP".tr()}',
          ),
        ],
      ),
    );
  }
}
