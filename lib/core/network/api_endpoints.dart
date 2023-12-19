import 'package:movie_app/core/utils/constants.dart';

class ApiEndPoints {
  static const kNowPlayingMovie = 'movie/now_playing';
  static const kPopularMovie = 'movie/popular';
  static const kTopRatedMovie = 'movie/top_rated';

  //---  PATHS    ---//
  static const nowPlayingMoviePath =
      '$baseUrl/$kNowPlayingMovie?api_key=$apiKey';
  static const popularMoviePath = '$baseUrl/$kPopularMovie?api_key=$apiKey';
  static const topRatedMoviePath = '$baseUrl/$kTopRatedMovie?api_key=$apiKey';
}
