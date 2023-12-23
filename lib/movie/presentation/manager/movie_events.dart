import 'package:equatable/equatable.dart';

abstract class MovieEvents extends Equatable{
  const MovieEvents();

  @override
  List<Object> get props => []; 
}

class NowPlayingEvent extends MovieEvents{}
class PopularEvent extends MovieEvents{}
class TopRatedEvent extends MovieEvents{}