import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/enums.dart';
import 'package:movie_app/movie/domain/use_cases/get_now_playing_use_case.dart';
import 'package:movie_app/movie/presentation/manager/movie_events.dart';
import 'package:movie_app/movie/presentation/manager/movie_states.dart';

class MovieBloc extends Bloc<MovieEvents, MovieStates> {
  final GetNowPlayingUseCase getNowPlayingUseCase;
  MovieBloc(this.getNowPlayingUseCase) : super(const MovieStates()) {
    on<NowPlayingEvent>((event, emit) async {
      final result = await getNowPlayingUseCase.nowPlayingExcute();
      print(result);
      emit(
        const MovieStates(nowPlayingStates: RequestState.loaded),
      );
      result.fold(
        (l) => MovieStates(
          nowPlayingStates: RequestState.error,
          nowPlayingErrMsg: l.message,
        ),
        (r) => MovieStates(
          nowPlayingMovieState: r,
          nowPlayingStates: RequestState.loaded,
        ),
      );
    });
  }
}
