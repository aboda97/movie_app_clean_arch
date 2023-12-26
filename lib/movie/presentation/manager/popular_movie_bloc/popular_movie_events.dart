import 'package:movie_app/movie/data/models/movie_model.dart';

abstract class PopularMovieEvent {}

class PopularEventLoading extends PopularMovieEvent {}

class PopularEventSuccess extends PopularMovieEvent {
  final List<MovieModel> moviesList;

  PopularEventSuccess({required this.moviesList});
}

class PopularEventFailure extends PopularMovieEvent {
  final String errMessage;

  PopularEventFailure({required this.errMessage});
}
