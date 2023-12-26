import 'package:get_it/get_it.dart';
import 'package:movie_app/features/movie/data/data_source/remote_data_source.dart';
import 'package:movie_app/features/movie/data/repository/movie_repo.dart';
import 'package:movie_app/features/movie/domain/base_repository/base_movie_repo.dart';
import 'package:movie_app/features/movie/domain/use_cases/get_now_playing_use_case.dart';
import 'package:movie_app/features/movie/domain/use_cases/get_popular_use_case.dart';
import 'package:movie_app/features/movie/domain/use_cases/get_top_rated_use_case.dart';
import 'package:movie_app/features/movie/presentation/manager/now_playing_movie_bloc/now_playing_movie_bloc.dart';
import 'package:movie_app/features/movie/presentation/manager/popular_movie_bloc/popular_movie_bloc.dart';
import 'package:movie_app/features/movie/presentation/manager/top_rated_movie_bloc/top_rated_movie_bloc.dart';

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
    sl.registerLazySingleton<GetPopularUseCase>(
      () => GetPopularUseCase(
        sl(),
      ),
    );
    sl.registerLazySingleton<GetTopRatedUseCase>(
      () => GetTopRatedUseCase(
        sl(),
      ),
    );

    //// BLOC
    sl.registerFactory<NowPlayingMovieBloc>(
      () => NowPlayingMovieBloc(
        sl(),
      ),
    );

    sl.registerFactory<PopularMovieBloc>(
      () => PopularMovieBloc(
        sl(),
      ),
    );
    sl.registerFactory<TopRatedMovieBloc>(
      () => TopRatedMovieBloc(
        sl(),
      ),
    );
  }
}
