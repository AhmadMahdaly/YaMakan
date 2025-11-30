import 'package:flutter/material.dart';

class ItemModel {
  ItemModel({
    this.text,
    this.image,
    this.page,
    this.qtyPlaces,
  });
  String? text;
  String? image;
  Widget? page;
  List<dynamic>? qtyPlaces;
}
