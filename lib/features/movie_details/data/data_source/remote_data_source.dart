import 'package:dio/dio.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/network/api_endpoints.dart';
import 'package:movie_app/core/network/error_message_model.dart';
import 'package:movie_app/features/movie_details/data/models/movie_details_model.dart';
import 'package:movie_app/features/movie_details/domain/use_cases/get_movie_details_use_case.dart';

abstract class BaseMovieDetailsDataSource {
  Future<MovieDetailsModel> getMovieDetails(
      MovieDetailsParams movieDetailsParams);
}

class MovieDetailsDataSource implements BaseMovieDetailsDataSource {
  final dio = Dio();
  @override
  Future<MovieDetailsModel> getMovieDetails(
      MovieDetailsParams movieDetailsParams) async {
    try {
      final response = await dio.get(
        ApiEndPoints.movieDetailsPath,
      );
      // print(response);
      if (response.statusCode == 200) {
        print(response.data);
        return MovieDetailsModel.fromJson(response.data);
      } else {
        throw ServerException(
          errorMessage: ErrorMessageModel.fromJson(response.data),
        );
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }
}
