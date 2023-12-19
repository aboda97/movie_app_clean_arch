import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class GetTopRatedUseCase {
  final BaseMovieRepo baseRepo;
  GetTopRatedUseCase(this.baseRepo);

  Future<Either<Failure, List<MovieEntity>>> getTopRatedExcute() async {
    return await baseRepo.getTopRatedMovie();
  }
}
