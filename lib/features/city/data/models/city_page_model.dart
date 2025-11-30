import 'package:flutter/material.dart';

class CityPageModel {
  const CityPageModel({
    this.name,
    this.image,
    this.seeAll,
    this.widgetList,
    this.qtyPlaces,
  });
  final String? name;
  final String? image;
  final Widget? seeAll;
  final Widget? widgetList;
  final List<dynamic>? qtyPlaces;
}
