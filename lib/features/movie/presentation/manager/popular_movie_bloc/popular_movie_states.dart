import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';

abstract class PopularMovieState {}

class PopularStateLoading extends PopularMovieState {}

class PopularStateSuccess extends PopularMovieState {
  final List<MovieEntity> moviesList;

  PopularStateSuccess({required this.moviesList});
}

class PopularStateFailure extends PopularMovieState {
  final String errMessage;

  PopularStateFailure({required this.errMessage});
}
