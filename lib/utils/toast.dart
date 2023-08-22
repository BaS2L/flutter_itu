import 'package:fluttertoast/fluttertoast.dart';

void showToast(String message, String color) {
  Fluttertoast.showToast(
    msg: message,
    webBgColor: color,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP_RIGHT,
  );
}
