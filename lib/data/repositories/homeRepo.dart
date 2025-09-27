import 'package:dart_either/dart_either.dart';

import '../../core/error/Falier.dart';
import '../models/moviesModel/CastModel.dart';
import '../models/moviesModel/moviesModel.dart';

abstract class HomeRepo {
  Future<Either<Falier, List<MoviesModel>>> fetchPopularMovies();
  Future<Either<Falier, List<MoviesModel>>> fetchTopRatingMovies();
  Future<Either<Falier, List<MoviesModel>>> fetchSearchMovies({
    required String query,
  });
  Future<Either<Falier, List<CastModel>>> fetchCaracterMovies(int movieId);
}
