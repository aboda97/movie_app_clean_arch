import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class GetNowPlayingUseCase {
  final BaseMovieRepo baseRepo;
  GetNowPlayingUseCase(this.baseRepo);

  Future<Either<Failure, List<MovieEntity>>> nowPlayingExcute() async {
    return await baseRepo.getNowPlayingMovie();
  }
}
