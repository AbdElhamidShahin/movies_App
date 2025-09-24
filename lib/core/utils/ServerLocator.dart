import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/data/repositories/HomeRepoImple.dart';
import 'package:movies_app/data/repositories/homeRepo.dart';

import 'ApiServise.dart';

final getIt = GetIt.instance;

void setupSeviceLocator() {
  getIt.registerSingleton<ApiServise>(ApiServise(Dio()));

  getIt.registerSingleton<HomeRepo>(
    HomeRepoImple(apiServise: getIt.get<ApiServise>()),
  );

}
