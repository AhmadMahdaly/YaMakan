import 'package:flutter/material.dart';

class TourPlaceCardModel {
  const TourPlaceCardModel({
    this.image,
    this.point,
    this.placeName,
    this.time,
    this.fees,
    this.placePage,
  });
  final String? image;
  final String? point;
  final String? placeName;
  final String? time;
  final String? fees;
  final Widget? placePage;
}
