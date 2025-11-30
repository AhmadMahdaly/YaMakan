import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:yamakan/core/shared_models/place_model.dart';

class AlexRepository {
  Future<List<PlaceModel>> loadPlaces() async {
    final jsonStr = await rootBundle.loadString('assets/data/alex_places.json');
    final list = json.decode(jsonStr) as List<dynamic>;
    return list
        .map((e) => PlaceModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<PlaceModel?> getById(String id) async {
    final places = await loadPlaces();
    final matches = places.where((p) => p.id == id);
    return matches.isNotEmpty ? matches.first : null;
  }

  Future<List<PlaceModel>> getByCategory(String category) async {
    final places = await loadPlaces();
    return places.where((p) => p.categories.contains(category)).toList();
  }
}
