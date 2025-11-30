import 'package:flutter/material.dart';

class EventPageModel {
  EventPageModel({
    this.image,
    this.name,
    this.locationName,
    this.about,
    this.date,
    this.day,
    this.time,
    this.fees,
    this.locationUrl,
    this.bookUrl,
    this.eventPage,
  });
  String? image;
  String? name;
  String? locationName;
  String? locationUrl;
  String? bookUrl;
  String? about;
  String? date;
  String? day;
  String? time;
  String? fees;
  Widget? eventPage;
}
