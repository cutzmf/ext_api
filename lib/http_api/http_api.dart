library http_api;

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_extensible_api/base_api/base_api.dart';

part 'dto/my_user.dart';

class HttpApi extends BaseApi {
  final _dio = Dio();

  @override
  FutureOr<void> visitLogoutRequest(LogoutRequest request) {
    return _dio.get('https://foo.bar/logout');
  }

  @override
  FutureOr<MyUserResponse> visitMyUserRequest(MyUserRequest request) async {
    final response = await _dio.get('https://foo.bar/logout');
    return _MyUserResponse();
  }
}
