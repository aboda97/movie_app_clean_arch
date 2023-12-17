import 'package:movie_app/movie/domain/base_repository/base_repo.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class GetPopularUseCase {
  final BaseRepo baseRepo;
  GetPopularUseCase(this.baseRepo);

  Future<List<MovieEntity>> getPopularExcute() async {
    return await baseRepo.getPopularMovie();
  }
}
