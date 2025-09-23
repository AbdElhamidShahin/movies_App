import 'package:dio/dio.dart';

abstract class Falier {
  final String errorMessage;

  Falier(this.errorMessage);
}

class ServerFailure extends Falier {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServise");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServise");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServise");

      case DioExceptionType.badCertificate:
        return ServerFailure("Certificate timeout with ApiServise");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServise was canseled");

      case DioExceptionType.connectionError:
        return ServerFailure("Connection timeout with ApiServise");

      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketExxeption")) {
          return ServerFailure("No internet connection");
        }
        return ServerFailure("Unexepted Error, Please try again");

      default:
        return ServerFailure("Opps there was an error, Please try again ");
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("You requst not found , Please try again");
    } else if (statusCode == 500) {
      return ServerFailure("Internet Server error, Please try again");
    } else {
      return ServerFailure("Opps there was an error, Please try again ");
    }
  }
}
