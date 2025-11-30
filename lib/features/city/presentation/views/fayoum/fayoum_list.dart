import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/data/cities/fayoum_places.dart';
import 'package:yamakan/features/city/presentation/views/fayoum/fayoum_grid_place.dart';
import 'package:yamakan/features/city/presentation/widgets/next_arrow.dart';
import 'package:yamakan/features/place/presentation/views/place_item.dart';

class FayoumList extends StatelessWidget {
  const FayoumList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: FayoumPlaces().all[0]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: FayoumPlaces().all[1]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: FayoumPlaces().all[5]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: FayoumPlaces().all[6]),
        ),
        const NextArrow(path: FayoumGrid()),
      ],
    );
  }
}
