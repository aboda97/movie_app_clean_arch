import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/features/movie/presentation/components/custom_header_sction_component.dart';
import 'package:movie_app/features/movie/presentation/components/now_playing_movie_component.dart';
import 'package:movie_app/features/movie/presentation/components/popular_movie_component.dart';
import 'package:movie_app/features/movie/presentation/components/top_rated_movie_component.dart';
import 'package:movie_app/features/movie/presentation/manager/now_playing_movie_bloc/now_playing_movie_bloc.dart';
import 'package:movie_app/features/movie/presentation/manager/now_playing_movie_bloc/now_playing_movie_events.dart';
import 'package:movie_app/features/movie/presentation/manager/popular_movie_bloc/popular_movie_bloc.dart';
import 'package:movie_app/features/movie/presentation/manager/popular_movie_bloc/popular_movie_events.dart';
import 'package:movie_app/features/movie/presentation/manager/top_rated_movie_bloc/top_rated_movie_bloc.dart';
import 'package:movie_app/features/movie/presentation/manager/top_rated_movie_bloc/top_rated_movie_events.dart';

class MovieHomeScreen extends StatelessWidget {
  const MovieHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) =>
              sl<NowPlayingMovieBloc>()..add(NowPlayingEventLoading()),
        ),
        BlocProvider(
          create: (BuildContext context) =>
              sl<PopularMovieBloc>()..add(PopularEventLoading()),
        ),
        BlocProvider(
          create: (BuildContext context) =>
              sl<TopRatedMovieBloc>()..add(TopRatedEventLoading()),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: const SingleChildScrollView(
          key: Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NowPlayingMovieComponent(),
              CustomHeaderSectionComponent(textName: 'Popular'),
              PopularMovieComponent(),
              CustomHeaderSectionComponent(textName: 'Top Rated'),
              TopRatedMovieComponent(),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
