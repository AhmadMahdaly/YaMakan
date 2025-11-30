import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/data/cities/cairo_places.dart';
import 'package:yamakan/features/city/presentation/views/cairo/cairo_grid_places.dart';
import 'package:yamakan/features/city/presentation/widgets/next_arrow.dart';
import 'package:yamakan/features/place/presentation/views/place_item.dart';

class CairoList extends StatelessWidget {
  const CairoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      scrollDirection: Axis.horizontal,
      children: [
        /// القلعة
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: CairoPlaces().all[6]),
        ),

        /// ش المعز
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: CairoPlaces().all[12]),
        ),

        /// مجمع الأديان
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: CairoPlaces().all[20]),
        ),

        /// المتحف المصري
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.sp),
          child: Item(item: CairoPlaces().all[21]),
        ),
        const NextArrow(path: CairoItems()),
      ],
    );
  }
}
