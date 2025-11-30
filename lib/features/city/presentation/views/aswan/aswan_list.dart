import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/data/cities/aswan_places.dart';
import 'package:yamakan/features/city/presentation/views/aswan/aswan_grid_place.dart';
import 'package:yamakan/features/city/presentation/widgets/next_arrow.dart';
import 'package:yamakan/features/place/presentation/views/place_item.dart';

class AswanList extends StatelessWidget {
  const AswanList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: AswanPlaces().all[4]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: AswanPlaces().all[5]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: AswanPlaces().all[6]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: AswanPlaces().all[2]),
        ),
        const NextArrow(path: AswanGrid()),
      ],
    );
  }
}
