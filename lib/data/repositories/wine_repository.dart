import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/wine_model.dart';

class WineRepository {
  Future<List<WineModel>> getWines() async {
    final data = await rootBundle.loadString('assets/v3.json');
    final jsonResult = json.decode(data);
    return (jsonResult['carousel'] as List)
        .map((wineJson) => WineModel.fromJson(wineJson))
        .toList();
  }
}
