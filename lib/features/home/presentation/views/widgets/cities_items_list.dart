import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/shared_models/item_model.dart';
import 'package:yamakan/data/cities/alex_places.dart';
import 'package:yamakan/data/cities/aswan_places.dart';
import 'package:yamakan/data/cities/cairo_places.dart';
import 'package:yamakan/data/cities/fayoum_places.dart';
import 'package:yamakan/data/cities/giza_places.dart';
import 'package:yamakan/data/cities/portsaid_places.dart';
import 'package:yamakan/features/city/presentation/views/alex/alex_page.dart';
import 'package:yamakan/features/city/presentation/views/aswan/aswan_page.dart';
import 'package:yamakan/features/city/presentation/views/cairo/cairo_page.dart';
import 'package:yamakan/features/city/presentation/views/fayoum/fayoum_page.dart';
import 'package:yamakan/features/city/presentation/views/giza/giza_page.dart';
import 'package:yamakan/features/city/presentation/views/porsaid/porsaid_page.dart';
import 'package:yamakan/features/city/presentation/widgets/city_item_card.dart';

class CitiesListItemsWidget extends StatelessWidget {
  const CitiesListItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final citiesList = <ItemModel>[
      ItemModel(
        qtyPlaces: CairoPlaces().all,
        page: const CairoPage(),
        image: 'assets/images/items/cities/qahera.jpg',
        text: 'CairoCityItem'.tr(),
      ),
      ItemModel(
        qtyPlaces: GizaPlaces().all,
        image: 'assets/images/items/cities/giza.jpg',
        text: 'Giza'.tr(),
        page: const GizaPage(),
      ),
      ItemModel(
        qtyPlaces: AlexPlaces().all,
        page: const AlexPage(),
        image: 'assets/images/items/category/other/الأسكندرية.jpg',
        text: 'AlexCityItem'.tr(),
      ),
      ItemModel(
        qtyPlaces: PortsaidPlaces().all,
        page: const PortsaidPage(),
        image: 'assets/images/items/category/other/بورسعيد.jpg',
        text: 'PortsaidCityItem'.tr(),
      ),
      ItemModel(
        qtyPlaces: FayoumPlaces().all,
        page: const FayoumPage(),
        image: 'assets/images/items/cities/fayoum/Fayoum.jpg',
        text: 'FayoumCityItem'.tr(),
      ),
      ItemModel(
        qtyPlaces: AswanPlaces().all,
        page: const AswanPage(),
        image: 'assets/images/items/category/other/أسوان.jpg',
        text: 'AswanCityItem'.tr(),
      ),
    ];
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 8.sp,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: citiesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.sp,
          ),
          child: CityItemCard(
            item: citiesList[index],
          ),
        );
      },
    );
  }
}
