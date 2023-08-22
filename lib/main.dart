import 'package:flutter/material.dart';
import 'package:flutter_itu/screens/layout/layout.dart';
import 'package:flutter_itu/screens/login/login_screen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  runApp(const ITU());
}

class ITU extends StatelessWidget {
  const ITU({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const Layout(),
      },
    );
  }
}
