import 'package:movie_app/movie/domain/entities/movie_entity.dart';

abstract class NowPlayingMovieState {}

class NowPlayingStateLoading extends NowPlayingMovieState {}

class NowPlayingStateSuccess extends NowPlayingMovieState {
  final List<MovieEntity> moviesList;

  NowPlayingStateSuccess({required this.moviesList});
}

class NowPlayingStateFailure extends NowPlayingMovieState {
  final String errMessage;

  NowPlayingStateFailure({required this.errMessage});
}
