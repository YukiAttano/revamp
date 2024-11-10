import "package:dio/dio.dart";
import "package:flutter/foundation.dart";

import "../../../generated/l10n.dart";
import "localizable_exception.dart";

class NetworkException extends LocalizableException {
  final String details;

  const NetworkException._({super.message, this.details = ""});

  factory NetworkException.dio(DioException e) {
    _NetworkJson json = const _NetworkJson.empty();

    Object? body = e.response?.data;
    if (body != null && body is Map<String, Object?>) {
      try {
        json = _NetworkJson.validate(body);
        // ignore: avoid_catches_without_on_clauses as the constructor must go on
      } catch (e, s) {
        if (kDebugMode) {
          debugPrint(e.toString());
          debugPrintStack(stackTrace: s);
        }
      }
    }


    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return NetworkConnectionTimeoutException._body(json);
      case DioExceptionType.sendTimeout:
        return NetworkSendTimeoutException._body(json);
      case DioExceptionType.receiveTimeout:
        return NetworkReceiveTimeoutException._body(json);
      case DioExceptionType.badCertificate:
        return NetworkBadCertificateException._body(json);
      case DioExceptionType.badResponse:
        return NetworkBadResponseException._body(json);
      case DioExceptionType.cancel:
        return NetworkCancelException._body(json);
      case DioExceptionType.connectionError:
        return NetworkConnectionErrorException._body(json);
      case DioExceptionType.unknown:
        return NetworkUnknownException._body(json);
    }
  }

  /// Read translated message from [body].
  NetworkException._body(_NetworkJson body) : this._(message: body.message, details: body.details);

  @override
  String getMessage(S s) =>
      throw UnsupportedError("Don't use NetworkException directly, call NetworkException.dio() instead");
}

class _NetworkJson {
  final String? message;
  final String details;

  const _NetworkJson._({this.message = "", this.details = ""});

  const _NetworkJson.empty() : this._();

  factory _NetworkJson.validate(Map<String, dynamic> json) {
    return _NetworkJson._(
      message: json["message"],
      details: json["details"] ?? "",
    );
  }
}

class NetworkConnectionTimeoutException extends NetworkException {
  NetworkConnectionTimeoutException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_connection_timeout;
}

class NetworkSendTimeoutException extends NetworkException {
  NetworkSendTimeoutException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_send_timeout;
}

class NetworkReceiveTimeoutException extends NetworkException {
  NetworkReceiveTimeoutException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_receive_timeout;
}

class NetworkBadCertificateException extends NetworkException {
  NetworkBadCertificateException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_bad_certificate;
}

class NetworkBadResponseException extends NetworkException {
  NetworkBadResponseException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_bad_response;
}

class NetworkCancelException extends NetworkException {
  NetworkCancelException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_cancel;
}

class NetworkConnectionErrorException extends NetworkException {
  NetworkConnectionErrorException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_connection_error;
}

class NetworkUnknownException extends NetworkException {
  NetworkUnknownException._body(super.body) : super._body();

  @override
  String getMessage(S s) => s.exception_network_unknown;
}
