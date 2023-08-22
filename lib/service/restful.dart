import 'package:dio/dio.dart';

Future<Map<String, dynamic>> restful(
    String type, String uri, Object data) async {
  final dio = Dio();
  dio.options = BaseOptions(
    baseUrl: 'https://10.31.62.59:8443',
    contentType: 'application/json;charset=utf-8',
    responseType: ResponseType.json,
    headers: {
      'Content-Type': 'application/json;charset=utf-8',
      "Access-Control-Allow-Credentials": 'true',
      "Access-Control-Allow-Origin": "http://localhost:3000",
      "credentials": 'true',
    },
  );
  String transType = (type == '') ? 'get' : type.toString().toLowerCase();
  if (transType == 'post') {
    final response = await dio.post(
      uri,
      data: data,
    );
    if (response.statusCode == 200) {
      final responseData = response.data;
      return responseData;
    } else {
      throw Exception('Failed to post');
    }
  } else if (transType == 'get') {
    final response = await dio.get(
      uri,
    );
    if (response.statusCode == 200) {
      final responseData = response.data;
      return responseData;
    } else {
      throw Exception('Failed to get');
    }
  } else {
    throw Exception('Failed to request');
  }
}
