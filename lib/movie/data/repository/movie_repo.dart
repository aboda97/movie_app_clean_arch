import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movie/data/data_source/remote_data_source.dart';
import 'package:movie_app/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class MovieRepo implements BaseMovieRepo {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepo(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovie() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessage.statusMsg));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovie() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessage.statusMsg));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovie() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessage.statusMsg));
    }
  }
}
