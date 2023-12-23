import 'package:dio/dio.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/network/api_endpoints.dart';
import 'package:movie_app/core/network/error_message_model.dart';
import 'package:movie_app/movie/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  final dio = Dio();

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    try {
      final response = await dio.get(
        ApiEndPoints.nowPlayingMoviePath,
      );
      // print(response);
      if (response.statusCode == 200) {
        /*
        final List<dynamic> responseData = response.data['results'];
        return responseData.map((json) => Movie.fromJson(json)).toList();
      */
        //Another Answer
        return List<MovieModel>.from(
          (response.data['results'] as List).map(
            (e) => MovieModel.fromJson(e),
          ),
        );
      } else {
        throw ServerException(
          errorMessage: ErrorMessageModel.fromJson(response.data),
        );
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    try {
      final response = await dio.get(
        ApiEndPoints.kPopularMovie,
      );

      if (response.statusCode == 200) {
        /*
        final List<dynamic> responseData = response.data['results'];
        return responseData.map((json) => Movie.fromJson(json)).toList();
      */
        //Another Answer
        return List<MovieModel>.from(
          (response.data['results'] as List).map(
            (e) => MovieModel.fromJson(e),
          ),
        );
      } else {
        throw ServerException(
          errorMessage: ErrorMessageModel.fromJson(response.data),
        );
      }
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    try {
      final response = await dio.get(
        ApiEndPoints.kTopRatedMovie,
      );

      if (response.statusCode == 200) {
        /*
        final List<dynamic> responseData = response.data['results'];
        return responseData.map((json) => Movie.fromJson(json)).toList();
      */
        //Another Answer
        return List<MovieModel>.from(
          (response.data['results'] as List).map(
            (e) => MovieModel.fromJson(e),
          ),
        );
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
