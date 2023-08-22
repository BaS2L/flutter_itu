import 'package:flutter/material.dart';
import 'package:flutter_itu/utils/colors.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 244,
      height: MediaQuery.of(context).size.height - 60,
      color: primaryColor,
      child: const Column(
        children: [
          Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
