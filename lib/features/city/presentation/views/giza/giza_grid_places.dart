import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/giza_places.dart';
import 'package:yamakan/features/city/presentation/widgets/city_see_all_page.dart';

class GizaGrid extends StatelessWidget {
  const GizaGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SeeAllPageItems(
      categoryLists: [
        GizaPlaces().all,
        GizaPlaces().historical,
        GizaPlaces().cultural,
        GizaPlaces().religious,
        GizaPlaces().park,
        GizaPlaces().cafes,
        GizaPlaces().restaurants,
      ],
      title: TR().giza,
    );
  }
}
