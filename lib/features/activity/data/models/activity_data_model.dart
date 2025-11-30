import 'package:flutter/material.dart';

class ActivityDataModel {
  ActivityDataModel({
    this.activityLocation,
    this.price,
    this.text,
    this.image,
    this.page,
  });
  String? text;
  String? image;
  Widget? page;
  String? activityLocation;
  String? price;
}
