import 'package:flutter/material.dart';

class CategoryItemModel {
  CategoryItemModel({
    this.icon,
    this.title,
    this.categoryPage,
  });
  final String? icon;
  final String? title;
  final Widget? categoryPage;
}
