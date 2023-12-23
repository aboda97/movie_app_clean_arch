import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/movie/presentation/manager/movie_bloc.dart';
import 'package:movie_app/movie/presentation/manager/movie_events.dart';
import 'package:movie_app/movie/presentation/manager/movie_states.dart';

class MovieHomeScreen extends StatelessWidget {
  const MovieHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return MovieBloc(
          sl(),
        )..add(
            NowPlayingEvent(),
          );
      },
      child: BlocBuilder<MovieBloc, MovieStates>(
        builder: (BuildContext context, state) {
          print(state);
          return const Scaffold();
        },
      ),
    );
  }
}
