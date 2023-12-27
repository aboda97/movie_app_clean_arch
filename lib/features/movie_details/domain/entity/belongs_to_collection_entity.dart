import 'package:equatable/equatable.dart';

class BelongsToCollectionEntity extends Equatable {
  final int id;
  final String name;
  final String posterPath;
  final String backdropPath;

  const BelongsToCollectionEntity({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        posterPath,
        backdropPath,
      ];
}
