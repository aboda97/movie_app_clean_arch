import 'package:movie_app/movie/data/models/movie_model.dart';

abstract class TopRatedMovieEvent {}

class TopRatedEventLoading extends TopRatedMovieEvent {}

class TopRatedEventSuccess extends TopRatedMovieEvent {
  final List<MovieModel> moviesList;

  TopRatedEventSuccess({required this.moviesList});
}

class TopRatedEventFailure extends TopRatedMovieEvent {
  final String errMessage;

  TopRatedEventFailure({required this.errMessage});
}
