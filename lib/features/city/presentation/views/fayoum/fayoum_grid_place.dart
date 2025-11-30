import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/fayoum_places.dart';
import 'package:yamakan/features/city/presentation/widgets/city_see_all_page.dart';

class FayoumGrid extends StatelessWidget {
  const FayoumGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SeeAllPageItems(
      categoryLists: [
        FayoumPlaces().all,
        FayoumPlaces().historical,
        FayoumPlaces().cultural,
        FayoumPlaces().religious,
        FayoumPlaces().park,
        FayoumPlaces().cafes,
        FayoumPlaces().restaurants,
      ],
      title: TR().fayoum,
    );
  }
}
