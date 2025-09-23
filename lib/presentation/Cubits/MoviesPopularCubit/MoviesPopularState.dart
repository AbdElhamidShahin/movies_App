import 'package:movies_app/data/models/moviesModel/moviesModel.dart';

abstract class MoviesPopularState {}

class MoviesPopularInitial extends MoviesPopularState {}

class MoviesPopularFalier extends MoviesPopularState {
  final String errorMessage;

  MoviesPopularFalier(this.errorMessage);
}

class MoviesPopularSuccess extends MoviesPopularState {
  final List<MoviesModel> movies;

  MoviesPopularSuccess(this.movies);
}

class MoviesPopularLoading extends MoviesPopularState {}
