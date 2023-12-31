import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/network/api_endpoints.dart';
import 'package:movie_app/core/network/error_message_model.dart';
import 'package:movie_app/features/movie_details/data/models/movie_details_model.dart';
import 'package:movie_app/features/movie_details/data/models/recommendation_movie_model.dart';
import 'package:movie_app/features/movie_details/domain/use_cases/get_movie_details_use_case.dart';

abstract class BaseMovieDetailsDataSource {
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(
      MovieDetailsParams movieDetailsParams);

  Future<Either<Failure, List<RecommendationMovieModel>>>
      getRecommendationMovies({required int movieId});
}

class MovieDetailsDataSource implements BaseMovieDetailsDataSource {
  final dio = Dio();
  @override
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(
      MovieDetailsParams movieDetailsParams) async {
    try {
      final response = await dio.get(
        ApiEndPoints.movieDetailsPath,
      );
      // print(response);
      if (response.statusCode == 200) {
        print(response.data);
        return right((MovieDetailsModel.fromJson(response.data)));
      } else {
        throw left(
          ServerException(
            errorMessage: ErrorMessageModel.fromJson(response.data),
          ),
        );
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  @override
  Future<Either<Failure, List<RecommendationMovieModel>>>
      getRecommendationMovies({required int movieId}) async {
    final Response response;
    try {
      response = await Dio().get(ApiEndPoints.movieRecommendationPath);
      if (response.statusCode == 200) {
        return right(
          (response.data['results'] as List)
              .map(
                (e) => RecommendationMovieModel.fromJson(e),
              )
              .toList(),
        );
      } else {
        throw left(
          ServerException(
            errorMessage: ErrorMessageModel.fromJson(response.data),
          ),
        );
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }
}
