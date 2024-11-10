import "dart:async";
import "dart:developer";

import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

import "../../../environment.dart";
import "../exceptions/localized_format_exception.dart";
import "../exceptions/network_exception.dart";
import "../exceptions/parse_exception.dart";

final networkProvider = Provider<NetworkClient>((ref) => NetworkClient());

class NetworkClient {
  static const String _authorizationHeader = "Authorization";

  late Dio _dio;

  Dio get dio {
    return _dio;
  }

  NetworkClient() {
    _init();
  }

  //static final Map<String, String> _corsHeader = {"Access-Control-Allow-Origin": "*"};

  void _init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: Environment.serverApi,
        contentType: Headers.jsonContentType,
        //    headers: kIsWeb ? _corsHeader : null,
      ),
    );

    _dio.interceptors.add(
      PrettyDioLogger(
        enabled: true,
        requestBody: true,
        requestHeader: false,
        responseBody: true,
        logPrint: (object) => log(object.toString()),
      ),
    );
  }

  void setBearer(String token) {
    _dio.options.headers[_authorizationHeader] = "Bearer $token";
    _restartDio();
  }

  void removeBearer() {
    _dio.options.headers[_authorizationHeader] = null;
    _restartDio();
  }

  void _restartDio() {
    _dio.close();
    Dio d = Dio();
    d.options = _dio.options;
    d.interceptors.addAll(List.of(_dio.interceptors));
    _dio = d;
  }

  // TODO(Alex): remove this
  String getBearer() {
    String? token = _dio.options.headers[_authorizationHeader];

    if (token != null) return token.replaceFirst("Bearer ", "");

    return "";
  }

  static Future<T> request<T>(Future<T> Function() request) async {
    try {
      T result = await request();

      return result;
      // ignore: avoid_catching_errors because fromJson methods throw Errors instead of Exceptions
    } on TypeError catch (e, s) {
      throw ParseException(e, s);
    } on DioException catch (e) {
      throw NetworkException.dio(e);
    } on FormatException catch (e, s) {
      if (kDebugMode) {
        debugPrint(e.toString());
        debugPrintStack(stackTrace: s);
      }

      throw const LocalizedFormatException();
    }
  }
}
