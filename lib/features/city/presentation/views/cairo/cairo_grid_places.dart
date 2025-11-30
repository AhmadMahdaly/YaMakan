import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/cairo_places.dart';
import 'package:yamakan/features/city/presentation/widgets/city_see_all_page.dart';

class CairoItems extends StatelessWidget {
  const CairoItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SeeAllPageItems(
      categoryLists: [
        CairoPlaces().all,
        CairoPlaces().historical,
        CairoPlaces().cultural,
        CairoPlaces().religious,
        CairoPlaces().park,
        CairoPlaces().cafes,
        CairoPlaces().restaurants,
      ],
      title: TR().cairo,
    );
  }
}
