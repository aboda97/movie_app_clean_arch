import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/use_case/base_use_case.dart';
import 'package:movie_app/features/movie_details/domain/base_repository/base_movie_details_repo.dart';
import 'package:movie_app/features/movie_details/domain/entity/recommendation_movie_entity.dart';

class GetRecommendationMovieUseCase extends BaseUseCase<
    List<RecommendationMovieEntity>, MovieRecommendationUseCaseParamters> {
  final BaseMovieDetailsRepo baseMovieDetailsRepo;

  GetRecommendationMovieUseCase({required this.baseMovieDetailsRepo});
  @override
  Future<Either<Failure, List<RecommendationMovieEntity>>> call(
      MovieRecommendationUseCaseParamters paramters) async {
    return await baseMovieDetailsRepo.getRecommendationMovie(
        movieId: paramters.movieId);
  }
}

class MovieRecommendationUseCaseParamters {
  final int movieId;

  MovieRecommendationUseCaseParamters({required this.movieId});
}
