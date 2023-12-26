import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/movie/domain/use_cases/get_popular_use_case.dart';
import 'package:movie_app/movie/presentation/manager/popular_movie_bloc/popular_movie_events.dart';
import 'package:movie_app/movie/presentation/manager/popular_movie_bloc/popular_movie_states.dart';

class PopularMovieBloc extends Bloc<PopularMovieEvent, PopularMovieState> {
  final GetPopularUseCase getPopularUseCase;
  PopularMovieBloc(this.getPopularUseCase) : super(PopularStateLoading()) {
    on<PopularMovieEvent>((event, emit) async {
      if (event is PopularEventSuccess) {
      } else if (event is PopularEventFailure) {
      } else {
        final result =
            await GetPopularUseCase(sl<BaseMovieRepo>()).popularExcute();
        result.fold((l) => emit(PopularStateFailure(errMessage: l.errMsg)),
            (r) => emit(PopularStateSuccess(moviesList: r)));
      }
    });
  }
}
