import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessageInFailureClass;
  Failures({required this.errorMessageInFailureClass});
}

class ServerError extends Failures {
  ServerError({required super.errorMessageInFailureClass});
  factory ServerError.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerError(
          errorMessageInFailureClass:
              'Error: the connection take long time, try later',
        );
      case DioExceptionType.sendTimeout:
        return ServerError(
          errorMessageInFailureClass:
              'Error: the send take long time, try later',
        );
      case DioExceptionType.receiveTimeout:
        return ServerError(
          errorMessageInFailureClass:
              'Error: the receive take long time, try later',
        );
      case DioExceptionType.badCertificate:
        return ServerError(
          errorMessageInFailureClass: 'Error: the certification is bad',
        );
      case DioExceptionType.badResponse:
        return ServerError.fromBadResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerError(
          errorMessageInFailureClass: 'Error: you cancel the request',
        );
      case DioExceptionType.connectionError:
        return ServerError.fromNetwork(dioException: dioException);
      case DioExceptionType.unknown:
        return ServerError(
          errorMessageInFailureClass: 'Error: there was an error try again',
        );
    }
  }
  factory ServerError.fromNetwork({required DioException dioException}) {
    if (dioException.error is SocketException) {
      return ServerError(
        errorMessageInFailureClass: 'Error: check from your network',
      );
    } else {
      return ServerError(
        errorMessageInFailureClass:
            'Error: There was an unexpected error, try later',
      );
    }
  }
  factory ServerError.fromBadResponse({
    required int statusCode,
    required Map<String, dynamic> response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerError(
        errorMessageInFailureClass: response['error']['message'],
      );
    } else if (statusCode == 404) {
      return ServerError(
        errorMessageInFailureClass: 'Error: you search on thing not found',
      );
    } else if (statusCode == 500) {
      return ServerError(
        errorMessageInFailureClass:
            'Error: from internal server, please try later',
      );
    } else {
      return ServerError(
        errorMessageInFailureClass: 'Error: there wan an error',
      );
    }
  }
}
