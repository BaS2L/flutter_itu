import 'dart:convert';

import 'package:flutter_itu/utils/config.dart';
import 'package:http/http.dart' as http;

String loginUrl = baseUrl() + '/api/system/auth/login';

Future<Map<String, dynamic>> login(String username, String password) async {
  final url = Uri.parse(loginUrl);
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'username': username, 'password': password}),
  );
  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body);
    return responseData;
  } else {
    throw Exception('Failed to login');
  }
}
