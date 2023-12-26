import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';

abstract class BaseMovieRepo {
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovie();
  Future<Either<Failure, List<MovieEntity>>> getPopularMovie();
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovie();
}
