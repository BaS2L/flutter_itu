import 'package:flutter/material.dart';
import 'package:flutter_itu/screens/login/login_screen.dart';

void main() {
  runApp(const ITU());
}

class ITU extends StatelessWidget {
  const ITU({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
