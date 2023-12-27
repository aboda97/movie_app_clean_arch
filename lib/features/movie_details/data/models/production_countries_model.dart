import 'package:movie_app/features/movie_details/domain/entity/production_countries_entity.dart';

class ProductionCountriesModel extends ProductionCountriesEntity {
  ProductionCountriesModel({
    required super.iso_3166_1,
    required super.name,
  });

  factory ProductionCountriesModel.fromJson(Map<String, dynamic> json) {
    return ProductionCountriesModel(
      iso_3166_1: json['iso_3166_1'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
