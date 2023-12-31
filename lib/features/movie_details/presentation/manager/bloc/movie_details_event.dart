part of 'movie_details_bloc.dart';

abstract class MovieDetailsEvent extends Equatable {
  const MovieDetailsEvent();

  @override
  List<Object> get props => [];
}

class MovieDetailsLoadingEvent extends MovieDetailsEvent {
  final MovieDetailsParams paramters;

  const MovieDetailsLoadingEvent({required this.paramters});
}

class MovieDetailsFailureEvent extends MovieDetailsEvent {
  final String errorMessage;

  const MovieDetailsFailureEvent({required this.errorMessage});
}

class MovieDetailsSuccessEvent extends MovieDetailsEvent {
  final MovieDetailsEntity movie;

  const MovieDetailsSuccessEvent({required this.movie});
}
