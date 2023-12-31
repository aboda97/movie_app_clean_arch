import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/use_case/base_use_case.dart';
import 'package:movie_app/features/movie_details/domain/base_repository/base_movie_details_repo.dart';
import 'package:movie_app/features/movie_details/domain/entity/movie_details_entity.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetailsEntity, MovieDetailsParams> {
  BaseMovieDetailsRepo baseMovieDetailsRepo;
  GetMovieDetailsUseCase(this.baseMovieDetailsRepo);

  @override
  Future<Either<Failure, MovieDetailsEntity>> call(
      MovieDetailsParams parameter) async {
    return await baseMovieDetailsRepo.getDetailsMovie(
        movieId: parameter.movieDetailsId);
  }
}

////----->  make this class if you need to add more than Parameter
class MovieDetailsParams extends Equatable {
  final int movieDetailsId;

  const MovieDetailsParams(this.movieDetailsId);
  @override
  List<Object?> get props => [
        movieDetailsId,
      ];
}
