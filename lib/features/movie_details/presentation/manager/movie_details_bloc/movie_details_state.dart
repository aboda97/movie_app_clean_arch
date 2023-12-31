part of 'movie_details_bloc.dart';

abstract class MovieDetailsState extends Equatable {
  const MovieDetailsState();

  @override
  List<Object> get props => [];
}

class MovieDetailsLoadingState extends MovieDetailsState {
  final MovieDetailsParams paramters;

  const MovieDetailsLoadingState({required this.paramters});
}

class MovieDetailsFailureState extends MovieDetailsState {
  final String errorMessage;

  const MovieDetailsFailureState({required this.errorMessage});
}

class MovieDetailsSuccessState extends MovieDetailsState {
  final MovieDetailsEntity movie;

  const MovieDetailsSuccessState({required this.movie});
}
