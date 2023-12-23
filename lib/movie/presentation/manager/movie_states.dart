import 'package:equatable/equatable.dart';
import 'package:movie_app/core/utils/enums.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class MovieStates extends Equatable { 
  final List<MovieEntity> nowPlayingMovieState;
  final RequestState nowPlayingStates;
  final String nowPlayingErrMsg;

  const MovieStates({
  this.nowPlayingMovieState = const [], 
  this.nowPlayingStates = RequestState.loading, 
  this.nowPlayingErrMsg = '',
});

   @override
  List<Object?> get props => [
    nowPlayingMovieState,
    nowPlayingStates,
    nowPlayingErrMsg,
  ];
}
