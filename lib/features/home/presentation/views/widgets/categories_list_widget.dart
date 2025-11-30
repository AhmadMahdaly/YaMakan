import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/features/category/data/models/category_item_model.dart';
import 'package:yamakan/features/category/presentation/views/category_page/cafes_page.dart';
import 'package:yamakan/features/category/presentation/views/category_page/cultural_page.dart';
import 'package:yamakan/features/category/presentation/views/category_page/museums_page.dart';
import 'package:yamakan/features/category/presentation/views/category_page/parks_page.dart';
import 'package:yamakan/features/category/presentation/views/category_page/religious_page.dart';
import 'package:yamakan/features/category/presentation/views/category_page/restaurants_page.dart';
import 'package:yamakan/features/category/presentation/views/widgets/category_item_widget.dart';

class CategoryListItemsWidget extends StatefulWidget {
  const CategoryListItemsWidget({
    super.key,
  });

  @override
  State<CategoryListItemsWidget> createState() =>
      _CategoryListItemsWidgetState();
}

class _CategoryListItemsWidgetState extends State<CategoryListItemsWidget> {
  final List<CategoryItemModel> list = [
    // CategoryItemModel(
    // categoryPage: ,
    //   icon: 'assets/icons/categories/activities.png',
    //   title: 'Activities'.tr(),
    // ),
    CategoryItemModel(
      categoryPage: const HistoricalPage(),
      icon: 'assets/icons/categories/historical.png',
      title: 'HistoricalTap'.tr(),
    ),
    CategoryItemModel(
      categoryPage: const CulturalPage(),
      icon: 'assets/icons/categories/calture.png',
      title: 'CulturalTap'.tr(),
    ),
    CategoryItemModel(
      categoryPage: const ReligiousPage(),
      icon: 'assets/icons/categories/religious.png',
      title: 'religious'.tr(),
    ),
    CategoryItemModel(
      categoryPage: const ParksPage(),
      icon: 'assets/icons/categories/parks.png',
      title: 'ParksTap'.tr(),
    ),
    CategoryItemModel(
      categoryPage: const CafesPage(),
      icon: 'assets/icons/categories/cafe.png',
      title: 'Cafes'.tr(),
    ),
    CategoryItemModel(
      categoryPage: const RestaurantsPage(),
      icon: 'assets/icons/categories/resturant.png',
      title: 'Restaurants'.tr(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 13.sp,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 3.sp,
        ),
        child: CategoryItemWidget(item: list[index]),
      ),
      itemCount: list.length,
    );
  }
}
