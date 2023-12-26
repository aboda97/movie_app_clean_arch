import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/use_case/base_use_case.dart';
import 'package:movie_app/features/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/features/movie/domain/entities/movie_entity.dart';

class GetNowPlayingUseCase extends BaseUseCase {
  final BaseMovieRepo baseRepo;
  GetNowPlayingUseCase(this.baseRepo);

  @override
  Future<Either<Failure, List<MovieEntity>>> call() async {
    return await baseRepo.getNowPlayingMovie();
  }
}
