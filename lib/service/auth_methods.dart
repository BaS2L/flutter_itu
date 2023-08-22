import 'package:flutter_itu/service/restful.dart';

login(String username, String password) {
  var data = {
    'username': username,
    'password': password,
    'auth_type': 'local',
    'otp': '',
    'kick': false,
    'mon': false,
  };
  return restful('post', '/api/system/auth/login', data);
}

logout(String userid) {
  return restful('post', '/api/system/auth/logout', {userid: userid});
}

getBanner() {
  return restful('get', '/api/system/banner', {});
}

getAuthType() {
  return restful('get', '/api/system/external/server', {});
}
