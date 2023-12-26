import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/features/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/features/movie/domain/use_cases/get_top_rated_use_case.dart';
import 'package:movie_app/features/movie/presentation/manager/top_rated_movie_bloc/top_rated_movie_events.dart';
import 'package:movie_app/features/movie/presentation/manager/top_rated_movie_bloc/top_rated_movie_states.dart';

class TopRatedMovieBloc extends Bloc<TopRatedMovieEvent, TopRatedMovieState> {
  final GetTopRatedUseCase getTopRatedUseCase;
  TopRatedMovieBloc(this.getTopRatedUseCase) : super(TopRatedStateLoading()) {
    on<TopRatedMovieEvent>((event, emit) async {
      if (event is TopRatedEventSuccess) {
        emit(TopRatedStateSuccess(moviesList: event.moviesList));
      } else if (event is TopRatedEventFailure) {
        emit(TopRatedStateFailure(errMessage: event.errMessage));
      } else {
        final result = await GetTopRatedUseCase(sl<BaseMovieRepo>())();
        result.fold((l) => emit(TopRatedStateFailure(errMessage: l.errMsg)),
            (r) => emit(TopRatedStateSuccess(moviesList: r)));
      }
    });
  }
}
