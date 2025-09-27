import 'package:dart_either/src/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/error/Falier.dart';
import 'package:movies_app/core/utils/ApiServise.dart';
import 'package:movies_app/data/models/moviesModel/moviesModel.dart';
import 'package:movies_app/data/repositories/homeRepo.dart';

import '../models/moviesModel/CastModel.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServise apiServise;

  HomeRepoImple({required this.apiServise});
  @override
  Future<Either<Falier, List<MoviesModel>>> fetchPopularMovies() async {
    try {
      var data = await apiServise.featchCatogaryData(
        endPoint: "movie/popular?api_key=c57118edc255f981fb498e3a6e899a20",
      );
      List<MoviesModel> movies = [];
      for (var item in data["results"]) {
        movies.add(MoviesModel.fromJson(item));
      }
      return Right(movies);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Falier, List<MoviesModel>>> fetchTopRatingMovies() async {
    try {
      var data = await apiServise.featchCatogaryData(
        endPoint: "movie/top_rated?api_key=c57118edc255f981fb498e3a6e899a20",
      );
      List<MoviesModel> movies = [];
      for (var item in data["results"]) {
        movies.add(MoviesModel.fromJson(item));
      }
      return Right(movies);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Falier, List<CastModel>>> fetchCaracterMovies(
    int movieId,
  ) async {
    try {
      var data = await apiServise.featchCatogaryData(
        endPoint:
            "movie/$movieId/credits?api_key=c57118edc255f981fb498e3a6e899a20",
      );

      List<CastModel> cast = [];
      for (var item in data["cast"]) {
        cast.add(CastModel.fromJson(item));
      }
      return Right(cast);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Falier, List<MoviesModel>>> fetchSearchMovies({
    required String query,
  })
  async {
    try {
      var data = await apiServise.featchCatogaryData(
        endPoint:
            "search/movie?api_key=c57118edc255f981fb498e3a6e899a20&query=${Uri.encodeComponent(query)}",
      );

      List<MoviesModel> movies = [];
      for (var item in data["results"]) {
        movies.add(MoviesModel.fromJson(item));
      }
      return Right(movies);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
