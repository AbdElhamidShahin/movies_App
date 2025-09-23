import 'package:dart_either/src/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/error/Falier.dart';
import 'package:movies_app/core/utils/ApiServise.dart';
import 'package:movies_app/data/models/moviesModel/moviesModel.dart';
import 'package:movies_app/data/repositories/homeRepo.dart';

class HomeIepoImple implements HomeRepo {
  final ApiServise apiServise;

  HomeIepoImple({required this.apiServise});
  @override
  Future<Either<Falier, List<MoviesModel>>> fetchPopularMovies() async {
    try {
      var data = await apiServise.featchCatogaryData(
        endPoint: "movie/popular?api_key=c57118edc255f981fb498e3a6e899a20",
      );
      List<MoviesModel> movies = [];

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
