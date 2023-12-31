import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/features/movie_details/domain/entity/recommendation_movie_entity.dart';
import 'package:movie_app/features/movie_details/domain/use_cases/get_recommendation_movie_use_case.dart';

part 'recommendation_movie_event.dart';
part 'recommendation_movie_state.dart';

class RecommendationMovieBloc
    extends Bloc<RecommendationMovieEvent, RecommendationMovieState> {
  final MovieRecommendationUseCaseParamters movieRecommendationUseCaseParamters;
  RecommendationMovieBloc(this.movieRecommendationUseCaseParamters)
      : super(RecommendationMovieLoadingState(
            movieRecommendationUseCaseParamters:
                movieRecommendationUseCaseParamters)) {
    on<RecommendationMovieEvent>(_getMovieRecommendations);
  }

  Future<void> _getMovieRecommendations(event, emit) async {
    if (event is RecommendationMovieLoadingEvent) {
      final result = await GetRecommendationMovieUseCase(
        baseMovieDetailsRepo: sl(),
      )(movieRecommendationUseCaseParamters);

      result.fold(
          (failure) => emit(
              RecommendationMovieFailureState(errorMessage: failure.errMsg)),
          (movies) => emit(
              RecommendationMovieSuccessState(movieRecommendations: movies)));
    } else if (event is RecommendationMovieFailureEvent) {
      return emit(
          RecommendationMovieFailureState(errorMessage: event.errorMessage));
    } else if (event is RecommendationMovieSuccessEvent) {
      return emit(RecommendationMovieSuccessState(
          movieRecommendations: event.movieRecommendations));
    }
  }
}
