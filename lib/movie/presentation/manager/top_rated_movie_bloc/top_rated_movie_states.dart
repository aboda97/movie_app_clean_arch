import 'package:movie_app/movie/domain/entities/movie_entity.dart';

abstract class TopRatedMovieState {}

class TopRatedStateLoading extends TopRatedMovieState {}

class TopRatedStateSuccess extends TopRatedMovieState {
  final List<MovieEntity> moviesList;

  TopRatedStateSuccess({required this.moviesList});
}

class TopRatedStateFailure extends TopRatedMovieState {
  final String errMessage;

  TopRatedStateFailure({required this.errMessage});
}
