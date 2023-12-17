import 'package:movie_app/movie/domain/base_repository/base_repo.dart';
import 'package:movie_app/movie/domain/entities/movie_entity.dart';

class GetNowPlayingUseCase {
  final BaseRepo baseRepo;
  GetNowPlayingUseCase(this.baseRepo);

  Future<List<MovieEntity>> nowPlayingExcute() async {
    return await baseRepo.getNowPlayingMovie();
  }
}
