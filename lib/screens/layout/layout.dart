import 'package:flutter/material.dart';
import 'package:flutter_itu/screens/dashboard/dashboard.dart';
import 'package:flutter_itu/screens/layout/header.dart';
import 'package:flutter_itu/screens/layout/side.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(),
          Row(
            children: [
              SideBar(),
              Expanded(
                child: DashBoardScreen(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
