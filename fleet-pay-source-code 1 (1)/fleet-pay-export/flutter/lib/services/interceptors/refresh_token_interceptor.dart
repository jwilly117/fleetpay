import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fleet_pay/models/auth_token.dart';
import 'package:fleet_pay/models/auth_token_response.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:fleet_pay/services/hive.dart';
import 'package:flutter/material.dart';

class RefreshTokenInterceptor extends Interceptor {
  final BuildContext context;

  final VoidCallback onTokenExpired;
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
    ),
  );

  AuthToken? _token;
  RefreshTokenInterceptor(this.context, {required this.onTokenExpired}) {
    String? authPayload = (hive.getString("authPayload"));
    if (authPayload != null) {
      _token = AuthToken.fromJson(jsonDecode(authPayload));
    }
  }
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path == "auth/me" && _token == null) {
      //for first ever login
      String? authPayload = (hive.getString("authPayload"));
      if (authPayload != null) {
        _token = AuthToken.fromJson(jsonDecode(authPayload));
      }
    }

    if (_token == null || options.path == "auth/refreshToken") {
      return handler.next(options);
    }
    if (_token!.expiresAt.compareTo(DateTime.now()) < 0) {
      _token = await refreshToken();
    }
    // not sure why but refreshToken method is always giving out expired error
    if (_token != null) {
      options.headers["Authorization"] = "Bearer ${_token!.accessToken}";
    }
    return handler.next(options);
  }

  Future<AuthToken?> refreshToken() async {
    // handle refresh token
    AuthTokenResponse refreshTokenResponse =
        await refreshTokenApi(refreshToken: _token!.refreshToken);
    if (refreshTokenResponse.code != 200) {
      onTokenExpired();

      return null;
    }
    AuthToken? authToken = refreshTokenResponse.result;

    if (authToken == null) {
      return null;
    }

    //save new refresh token and acces token
    await hive.setString("authPayload", jsonEncode(authToken.toJson()));
    return authToken;
  }

  Future<AuthTokenResponse> refreshTokenApi({
    required String refreshToken,
  }) async {
    Response resp = await _dio.post(
      'auth/refreshToken',
      queryParameters: {},
      data: {
        'refreshToken': refreshToken,
      },
    );
    AuthTokenResponse response = AuthTokenResponse.fromJson(resp.data);

    return response;
  }
}
