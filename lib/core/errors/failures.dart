import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(
          'Bad SSL certificate. Please check your connection',
        );

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection or connection error');

      case DioExceptionType.unknown:
        if (dioException.error is SocketException) {
          final socketException = dioException.error as SocketException;
          final osError = socketException.osError;

          if (osError != null) {
            switch (osError.errorCode) {
              case 7: // DNS lookup failed
              case 11001:
                return ServerFailure('Could not resolve host. Check the URL or your DNS.');
              case 111: // Connection refused
                return ServerFailure('Connection refused by the server');
              case 113: // No route to host
                return ServerFailure('No route to host. Please check your network.');
              default:
                return ServerFailure('Network error: ${osError.message}');
            }
          }
          return ServerFailure('No internet connection');
        }
        final errorMessage =
            dioException.error?.toString() ?? 'Unexpected error';
        return ServerFailure('Unknown error: $errorMessage');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try again later');
    } else {
      return ServerFailure('Oops There was an error, please try again later');
    }
  }
}
