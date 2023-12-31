import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie_details/domain/entity/movie_details_entity.dart';
import 'package:movie_app/features/movie_details/domain/entity/recommendation_movie_entity.dart';

abstract class BaseMovieDetailsRepo {
  Future<Either<Failure, MovieDetailsEntity>> getDetailsMovie(
      {required int movieId});

  Future<Either<Failure, List<RecommendationMovieEntity>>>
      getRecommendationMovie({required int movieId});
}
