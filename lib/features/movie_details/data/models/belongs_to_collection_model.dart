import 'package:movie_app/features/movie_details/domain/entity/belongs_to_collection_entity.dart';

class BelongsToCollectionModel extends BelongsToCollectionEntity {
  BelongsToCollectionModel({
    required super.id,
    required super.name,
    required super.posterPath,
    required super.backdropPath,
  });

  factory BelongsToCollectionModel.fromJson(Map<String, dynamic> json) {
    return BelongsToCollectionModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      posterPath: json['poster_path'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
    );
  }
}
