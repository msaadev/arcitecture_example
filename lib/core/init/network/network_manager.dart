import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  NetworkManager._init() {
    final BaseOptions baseOptions = BaseOptions(
      baseUrl: 'https://reqres.in/api/',
    );
    _dio = Dio(baseOptions);
  }

  late final Dio _dio;

  Future? dioGet(
    String path,
  ) async {
    final response = await _dio.get(path);
    return ifElse(response);
  }

  Future? dioPost({required String path, required Map data}) async {
    final response = await _dio.post(
      path,
      data: data,
    );
    return ifElse(response);
  }

  dynamic ifElse(Response response) {
    if (response.statusCode == HttpStatus.ok) {
      return response.data;
    } else {
      return null;
    }
  }
}
