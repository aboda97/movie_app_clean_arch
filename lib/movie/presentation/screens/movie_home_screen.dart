import 'package:flutter/material.dart';
import 'package:movie_app/movie/presentation/components/custom_header_sction_component.dart';
import 'package:movie_app/movie/presentation/components/now_playing_movie_component.dart';
import 'package:movie_app/movie/presentation/components/popular_mpvie_component.dart';
import 'package:movie_app/movie/presentation/components/top_rated_movie_component.dart';

class MovieHomeScreen extends StatelessWidget {
  const MovieHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
