part of 'recommendation_movie_bloc.dart';

abstract class RecommendationMovieEvent extends Equatable {
  const RecommendationMovieEvent();

  @override
  List<Object> get props => [];
}

class RecommendationMovieLoadingEvent extends RecommendationMovieEvent {
  final RecommendationMovieLoadingEvent movieRecommendationUseCaseParamters;

  const RecommendationMovieLoadingEvent(
      {required this.movieRecommendationUseCaseParamters});
}

class RecommendationMovieFailureEvent extends RecommendationMovieEvent {
  final String errorMessage;

  const RecommendationMovieFailureEvent({required this.errorMessage});
}

class RecommendationMovieSuccessEvent extends RecommendationMovieEvent {
  final List<RecommendationMovieEntity> movieRecommendations;

  const RecommendationMovieSuccessEvent({required this.movieRecommendations});
}
