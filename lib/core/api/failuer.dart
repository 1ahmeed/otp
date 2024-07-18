
import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  const Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioException.connectionTimeout:
        return ServerFailure('Connection TimeOut with Api Server');
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection is Timed out');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TimeOut with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive TimeOut with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request Api Server is canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection with server');
      case DioExceptionType.unknown:
        return ServerFailure('oops , there are unKnown error please try again later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if(response !=null) {
      return ServerFailure(response['message']);
    }
    return ServerFailure('Ops There was an Error Please try again');
  }
}

class CacheFailure extends Failures{
  CacheFailure(super.errorMessage);
}