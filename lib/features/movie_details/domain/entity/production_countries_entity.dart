import 'package:equatable/equatable.dart';

class ProductionCountriesEntity extends Equatable {
  final String iso_3166_1;
  final String name;

  const ProductionCountriesEntity({
    required this.iso_3166_1,
    required this.name,
  });

  @override
  List<Object?> get props => [
        iso_3166_1,
        name,
      ];
}
