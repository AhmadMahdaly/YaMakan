import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:yamakan/data/cities/alex_places.dart';
import 'package:yamakan/data/cities/aswan_places.dart';
import 'package:yamakan/data/cities/cairo_places.dart';
import 'package:yamakan/data/cities/fayoum_places.dart';
import 'package:yamakan/data/cities/giza_places.dart';
import 'package:yamakan/data/cities/portsaid_places.dart';
import 'package:yamakan/features/category/presentation/views/category_page_widget.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CategoryPageItems(
      title: 'Restaurants'.tr(),
      categoryLists: [
        CairoPlaces().restaurants,
        GizaPlaces().restaurants,
        AlexPlaces().restaurants,
        PortsaidPlaces().restaurants,
        FayoumPlaces().restaurants,
        AswanPlaces().restaurants,
      ],
    );
  }
}
