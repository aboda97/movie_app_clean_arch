import 'package:movie_app/movie/domain/base_repository/base_repo.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class GetTopRatedUseCase {
  final BaseRepo baseRepo;
  GetTopRatedUseCase(this.baseRepo);

  Future<List<MovieEntity>> getTopRatedExcute() async {
    return await baseRepo.getTopRatedMovie();
  }
}
