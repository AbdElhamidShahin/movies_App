import 'package:movies_app/data/models/moviesModel/moviesModel.dart';

abstract class MoviesSearchrState {}

class MoviesSearchInitial extends MoviesSearchrState {}

class MoviesSearchFalier extends MoviesSearchrState {
  final String errorMessage;

  MoviesSearchFalier(this.errorMessage);
}

class MoviesSearchSuccess extends MoviesSearchrState {
  final List<MoviesModel> movies;

  MoviesSearchSuccess(this.movies);
}

class MoviesSearchLoading extends MoviesSearchrState {}
