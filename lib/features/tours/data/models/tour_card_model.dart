import 'package:flutter/material.dart';

class TourCardModel {
  const TourCardModel({
    this.list4Image,
    this.cityName,
    this.tourName,
    this.time,
    this.fees,
    this.tourPage,
  });
  final List<String>? list4Image;
  final String? cityName;
  final String? tourName;
  final String? time;
  final String? fees;
  final Widget? tourPage;
}
