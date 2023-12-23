import 'package:get_it/get_it.dart';
import 'package:movie_app/movie/data/data_source/remote_data_source.dart';
import 'package:movie_app/movie/data/repository/movie_repo.dart';
import 'package:movie_app/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/movie/domain/use_cases/get_now_playing_use_case.dart';
import 'package:movie_app/movie/presentation/manager/movie_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void setup() {
    //// INSTANCE OF DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
      () => MovieRemoteDataSource(),
    );

    //// INSTANCE OF REPOSITORY
    sl.registerLazySingleton<BaseMovieRepo>(
      () => MovieRepo(
        sl(),
      ),
    );

    //// INSTANCE OF USECASE
    sl.registerLazySingleton<GetNowPlayingUseCase>(
      () => GetNowPlayingUseCase(
        sl(),
      ),
    );

    //// BLOC
    sl.registerFactory<MovieBloc>(
      () => MovieBloc(
        sl(),
      ),
    );
  }
}
