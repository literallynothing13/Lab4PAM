import '../../domain/entities/wine_entity.dart';

class WineModel extends WineEntity {
  WineModel({
    required super.name,
    required super.image,
    required super.criticScore,
    required super.bottleSize,
    required super.priceUsd,
    required super.type,
    required super.country,
    required super.city,
  });

  factory WineModel.fromJson(Map<String, dynamic> json) {
    return WineModel(
      name: json['name'],
      image: json['image'],
      criticScore: json['critic_score'],
      bottleSize: json['bottle_size'],
      priceUsd: json['price_usd'].toDouble(),
      type: json['type'],
      country: json['from']['country'],
      city: json['from']['city'],
    );
  }
}
