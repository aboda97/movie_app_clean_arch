import 'package:movie_app/features/movie_details/domain/entity/spoken_language_entity.dart';

class SpokenLanguagesModel extends SpokenLanguagesEntity {
  SpokenLanguagesModel({
    required super.englishName,
    required super.iso_639_1,
    required super.name,
  });

  factory SpokenLanguagesModel.fromJson(Map<String, dynamic> json) {
    return SpokenLanguagesModel(
      englishName: json['english_name'] ?? '',
      iso_639_1: json['iso_639_1'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
