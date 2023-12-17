import 'package:movie_app/movie/domain/entities/movie_entity.dart';

abstract class BaseRepo {
  Future<List<MovieEntity>> getNowPlayingMovie();
  Future<List<MovieEntity>> getPopularMovie();
  Future<List<MovieEntity>> getTopRatedMovie();
}
