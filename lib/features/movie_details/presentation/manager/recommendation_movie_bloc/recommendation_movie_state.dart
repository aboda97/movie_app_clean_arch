part of 'recommendation_movie_bloc.dart';

abstract class RecommendationMovieState extends Equatable {
  const RecommendationMovieState();

  @override
  List<Object> get props => [];
}

class RecommendationMovieLoadingState extends RecommendationMovieState {
  final MovieRecommendationUseCaseParamters movieRecommendationUseCaseParamters;

  RecommendationMovieLoadingState(
      {required this.movieRecommendationUseCaseParamters});
}

class RecommendationMovieFailureState extends RecommendationMovieState {
  final String errorMessage;

  RecommendationMovieFailureState({required this.errorMessage});
}

class RecommendationMovieSuccessState extends RecommendationMovieState {
  final List<RecommendationMovieEntity> movieRecommendations;

  RecommendationMovieSuccessState({required this.movieRecommendations});
}
