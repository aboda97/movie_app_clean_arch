import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class GetPopularUseCase {
  final BaseMovieRepo baseRepo;
  GetPopularUseCase(this.baseRepo);

  Future<Either<Failure, List<MovieEntity>>> getPopularExcute() async {
    return await baseRepo.getPopularMovie();
  }
}
