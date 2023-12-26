import 'package:movie_app/movie/data/models/movie_model.dart';

abstract class NowPlayingMovieEvent {}

class NowPlayingEventLoading extends NowPlayingMovieEvent {}

class NowPlayingEventSuccess extends NowPlayingMovieEvent {
  final List<MovieModel> moviesList;

  NowPlayingEventSuccess({required this.moviesList});
}

class NowPlayingEventFailure extends NowPlayingMovieEvent {
  final String errMessage;

  NowPlayingEventFailure({required this.errMessage});
}
