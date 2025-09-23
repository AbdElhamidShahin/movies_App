import 'package:dio/dio.dart';

import '../constants/Strings.dart';

class ApiServise {
  final Dio dio;

  ApiServise(this.dio);

  Future<Map<String, dynamic>> featchCatogaryData({
    required String endPoint,
  }) async {
    var response = await Dio().get("$baseUrl$endPoint");
    return response.data;
  }
}
