import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie_details/data/data_source/remote_data_source.dart';
import 'package:movie_app/features/movie_details/domain/base_repository/base_movie_details_repo.dart';
import 'package:movie_app/features/movie_details/domain/entity/movie_details_entity.dart';
import 'package:movie_app/features/movie_details/domain/entity/recommendation_movie_entity.dart';
import 'package:movie_app/features/movie_details/domain/use_cases/get_movie_details_use_case.dart';

class MovieDetailsRepo implements BaseMovieDetailsRepo {
  final BaseMovieDetailsDataSource baseMovieDetailsDataSource;

  MovieDetailsRepo(this.baseMovieDetailsDataSource);

  // Future<Either<Failure, MovieDetailsEntity>> getMovieDetails(
  //     MovieDetailsParams params) async {
  //   final result = await baseMovieDetailsDataSource.getMovieDetails(params);
  //   try {
  //     return Right(result);
  //   } on ServerException catch (failure) {
  //     return Left(ServerFailure(failure.errorMessage.statusMsg));
  //   }
  // }

  @override
  Future<Either<Failure, MovieDetailsEntity>> getDetailsMovie(
      {required int movieId}) async {
    return await baseMovieDetailsDataSource
        .getMovieDetails(MovieDetailsParams(movieId));
  }

  @override
  Future<Either<Failure, List<RecommendationMovieEntity>>>
      getRecommendationMovie({required int movieId}) async {
    return await baseMovieDetailsDataSource.getRecommendationMovies(
        movieId: movieId);
  }
}
