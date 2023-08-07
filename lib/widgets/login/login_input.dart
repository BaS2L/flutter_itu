import 'package:flutter/material.dart';

class LoginTextInput extends StatelessWidget {
  final String text;
  const LoginTextInput({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(
            color: Color(0xff7c8596),
            fontSize: 16,
          ),
          hintStyle: const TextStyle(
            color: Color(0xff7c8596),
            fontSize: 16,
          ),
          filled: true,
          fillColor: const Color(0xff111213),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff193941),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
