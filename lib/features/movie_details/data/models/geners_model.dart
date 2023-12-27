import 'package:movie_app/features/movie_details/domain/entity/geners_entity.dart';

class GenersModel extends GenresEntity {
  GenersModel({
    required super.id,
    required super.name,
  });

  factory GenersModel.fromJson(Map<String, dynamic> json) {
    return GenersModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
    );
  }
}
