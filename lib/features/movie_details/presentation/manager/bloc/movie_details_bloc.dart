import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/features/movie_details/domain/entity/movie_details_entity.dart';
import 'package:movie_app/features/movie_details/domain/use_cases/get_movie_details_use_case.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieDetailsParams movieDetailsParams;
  MovieDetailsBloc(this.movieDetailsParams)
      : super(MovieDetailsLoadingState(paramters: movieDetailsParams)) {
    on<MovieDetailsEvent>(_getmovieDetails);
  }

  Future<void> _getmovieDetails(event, emit) async {
    if (event is MovieDetailsFailureEvent) {
      return emit(MovieDetailsFailureState(errorMessage: event.errorMessage));
    } else if (event is MovieDetailsSuccessEvent) {
      return emit(MovieDetailsSuccessState(movie: event.movie));
    } else if (event is MovieDetailsLoadingEvent) {
      final result = await GetMovieDetailsUseCase(sl()).call(event.paramters);

      result.fold(
          (failure) =>
              emit(MovieDetailsFailureState(errorMessage: failure.errMsg)),
          (movie) => emit(MovieDetailsSuccessState(movie: movie)));
    }
  }

/*
  final MovieDetailsParams movieDetailsParams;
  MovieDetailsBloc(this.movieDetailsParams)
      : super(MovieDetailsInitialState()) {
    on<GetMovieDetailsEvent>((event, emit) async {
      final result = await GetMovieDetailsUseCase(sl<BaseMovieDetailsRepo>())(
          MovieDetailsParams(event.id));
      result.fold((l) => emit(MovieDetailsFailureState(errMessage: l.errMsg)),
          (r) => emit(MovieDetailsSuccessState(movieDetailsModel: r.genres)));
    });
  }
  */
}
