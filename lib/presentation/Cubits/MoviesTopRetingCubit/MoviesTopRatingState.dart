import 'package:movies_app/data/models/moviesModel/moviesModel.dart';

abstract class MoviesTopRatingState {}

class MoviesTopRatingInitial extends MoviesTopRatingState {}

class MoviesTopRatingFalier extends MoviesTopRatingState {
  final String errorMessage;

  MoviesTopRatingFalier(this.errorMessage);
}

class MoviesTopRatingSuccess extends MoviesTopRatingState {
  final List<MoviesModel> movies;

  MoviesTopRatingSuccess(this.movies);
}

class MoviesTopRatingLoading extends MoviesTopRatingState {}
