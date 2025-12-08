import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/cairo_places.dart';
import 'package:yamakan/features/city/data/models/city_page_model.dart';
import 'package:yamakan/features/city/presentation/views/cairo/cairo_grid_places.dart';
import 'package:yamakan/features/city/presentation/views/cairo/cairo_list.dart';
import 'package:yamakan/features/city/presentation/views/cairo/tours/city_tour.dart';
import 'package:yamakan/features/city/presentation/views/cairo/tours/religious_tour.dart';
import 'package:yamakan/features/city/presentation/widgets/city_page_widget.dart';
import 'package:yamakan/features/tours/data/models/tour_card_model.dart';

class CairoPage extends StatelessWidget {
  const CairoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CityPageWidget(
        city: CityPageModel(
          qtyPlaces: CairoPlaces().all,
          image: 'assets/images/items/cities/qahera.jpg',
          name: TR().cairo,
          seeAll: const CairoItems(),
          widgetList: const CairoList(),
        ),

        /// Tours
        cards: [
          //
          TourCardModel(
            cityName: TR().cairo,
            tourName: TR().cityTour,
            list4Image: [
              CairoPlaces().all[0].image!,
              CairoPlaces().all[3].image!,
              CairoPlaces().all[6].image!,
              CairoPlaces().all[9].image!,
            ],
            tourPage: const CairoCityTour(),
            time: 'Hours7'.tr(),
            fees: '230 ${"EGP".tr()}',
          ),
          //
          TourCardModel(
            cityName: TR().cairo,
            tourName: TR().religiousTour,
            list4Image: [
              CairoPlaces().all[23].image!,
              CairoPlaces().all[29].image!,
              CairoPlaces().all[36].image!,
              CairoPlaces().all[12].image!,
            ],
            tourPage: const CairoReligiousTour(),
            time: 'Hours7'.tr(),
            fees: '40 ${"EGP".tr()}',
          ),
        ],
      ),
    );
  }
}
