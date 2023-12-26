import 'package:flutter/material.dart';
import 'package:movie_app/core/services/service_locator.dart';
import 'package:movie_app/features/movie/presentation/screens/movie_home_screen.dart';

void main() {
  ServiceLocator().setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MovieHomeScreen(),
    );
  }
}
