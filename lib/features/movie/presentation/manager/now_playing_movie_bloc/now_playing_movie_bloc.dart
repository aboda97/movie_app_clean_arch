import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/features/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/features/movie/domain/use_cases/get_now_playing_use_case.dart';
import 'package:movie_app/features/movie/presentation/manager/now_playing_movie_bloc/now_playing_movie_events.dart';
import 'package:movie_app/features/movie/presentation/manager/now_playing_movie_bloc/now_playing_movie_states.dart';

class NowPlayingMovieBloc
    extends Bloc<NowPlayingMovieEvent, NowPlayingMovieState> {
  final GetNowPlayingUseCase getNowPlayingUseCase;
  NowPlayingMovieBloc(this.getNowPlayingUseCase)
      : super(NowPlayingStateLoading()) {
    on<NowPlayingMovieEvent>((event, emit) async {
      if (event is NowPlayingEventSuccess) {
        emit(NowPlayingStateSuccess(moviesList: event.moviesList));
      } else if (event is NowPlayingEventFailure) {
        emit(NowPlayingStateFailure(errMessage: event.errMessage));
      } else {
        final result = await GetNowPlayingUseCase(sl<BaseMovieRepo>())();
        result.fold((l) => emit(NowPlayingStateFailure(errMessage: l.errMsg)),
            (r) => emit(NowPlayingStateSuccess(moviesList: r)));
      }
    });
  }
}
