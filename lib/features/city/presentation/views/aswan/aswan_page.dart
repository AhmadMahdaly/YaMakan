import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/aswan_places.dart';
import 'package:yamakan/features/city/data/models/city_page_model.dart';
import 'package:yamakan/features/city/presentation/views/aswan/aswan_grid_place.dart';
import 'package:yamakan/features/city/presentation/views/aswan/aswan_list.dart';
import 'package:yamakan/features/city/presentation/views/aswan/tours/city_tour.dart';
import 'package:yamakan/features/city/presentation/views/aswan/tours/historical_tour.dart';
import 'package:yamakan/features/city/presentation/widgets/city_page_widget.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';

class AswanPage extends StatelessWidget {
  const AswanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CityPageWidget(
        city: CityPageModel(
          qtyPlaces: AswanPlaces().all,
          image: 'assets/images/items/category/other/أسوان.jpg',
          name: TR().aswan,
          seeAll: const AswanGrid(),
          widgetList: const AswanList(),
        ),
        cards: [
          TourCardModel(
            cityName: TR().aswan,
            tourName: TR().historicalTour,
            list4Image: [
              AswanPlaces().all[3].image!,
              AswanPlaces().all[1].image!,
              AswanPlaces().all[5].image!,
              AswanPlaces().all[7].image!,
            ],
            tourPage: const AswanHistoricalTour(),
            time: TR().hours6,
            fees: '110 ${TR().egyPound}',
          ),
          TourCardModel(
            cityName: TR().aswan,
            tourName: TR().cityTour,
            list4Image: [
              AswanPlaces().all[2].image!,
              AswanPlaces().all[8].image!,
              AswanPlaces().all[10].image!,
              AswanPlaces().all[9].image!,
            ],
            tourPage: const AswanCityTour(),
            time: 'Hours8'.tr(),
            fees: '20 ${TR().egyPound}',
          ),
        ],
      ),
    );
  }
}
