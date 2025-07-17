import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  static const String baseUrl = "http://10.0.2.2:5000";
  static late final Dio _dio;

  static Future<void> init() async {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {"Content-Type": "application/json"},
      ),
    );
  }

  static Future<Map<String, dynamic>> login(
    String email,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        '/login',
        data: jsonEncode({'email': email, 'password': password}),
      );
      log("Login response: ${response.data}");
      switch (response.statusCode) {
        case 200:
          return {'success': true, 'data': response.data};
        case 400:
          return {'success': false, 'error': response.data['error']};
        case 401:
          return {'success': false, 'error': response.data['error']};
        default:
          return {'success': false, 'error': 'Unexpected error'};
      }
    } catch (e) {
      return {'success': false, 'error': 'Failed to login: $e'};
    }
  }

  static Future<Map<String, dynamic>> register(
    String username,
    String email,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        '/register',
        data: jsonEncode({
          'username': username,
          'email': email,
          'password': password,
        }),
      );
      log("Register response: ${response.data}");
      switch (response.statusCode) {
        case 201:
          return {'success': true, 'data': response.data};
        case 400:
          return {'success': false, 'error': response.data['error']};
        case 409:
          return {'success': false, 'error': response.data['error']};
        default:
          return {'success': false, 'error': 'Unexpected error'};
      }
    } catch (e) {
      return {'success': false, 'error': 'Failed to register: $e'};
    }
  }
}
