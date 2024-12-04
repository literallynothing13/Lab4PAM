class WineEntity {
  final String name;
  final String image;
  final int criticScore;
  final String bottleSize;
  final double priceUsd;
  final String type;
  final String country;
  final String city;

  WineEntity({
    required this.name,
    required this.image,
    required this.criticScore,
    required this.bottleSize,
    required this.priceUsd,
    required this.type,
    required this.country,
    required this.city,
  });

  get origin => null;
}
