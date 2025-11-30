import 'package:flutter/material.dart';
import 'package:yamakan/core/constants/key_language.dart';
import 'package:yamakan/data/cities/portsaid_places.dart';
import 'package:yamakan/features/city/presentation/widgets/city_see_all_page.dart';

class PortsaidGrid extends StatelessWidget {
  const PortsaidGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SeeAllPageItems(
      categoryLists: [
        PortsaidPlaces().all,
        PortsaidPlaces().historical,
        PortsaidPlaces().cultural,
        PortsaidPlaces().religious,
        PortsaidPlaces().park,
        PortsaidPlaces().cafes,
        PortsaidPlaces().restaurants,
      ],
      title: TR().portsaid,
    );
  }
}
