import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  bool _isHovered = false;
  bool _infoHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            color: const Color(0xff272b32),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 1200,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      _isHovered = value;
                    });
                  },
                  child: Container(
                    width: 134,
                    height: 60,
                    decoration: BoxDecoration(
                      color: _isHovered
                          ? const Color(0xff82aaf5)
                          : const Color(0xff272b32),
                      border: const Border(
                        left: BorderSide(
                          color: Color(0xff383e48),
                          width: 2,
                        ),
                        right: BorderSide(
                          color: Color(0xff383e48),
                          width: 2,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '정책전송',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _isHovered ? Colors.black : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      _infoHovered = value;
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: _infoHovered
                          ? const Color(0xff383e48)
                          : const Color(0xff272b32),
                      border: const Border(
                        left: BorderSide(
                          color: Color(0xff383e48),
                          width: 2,
                        ),
                        right: BorderSide(
                          color: Color(0xff383e48),
                          width: 2,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '정보',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: _infoHovered
                                ? Colors.white
                                : const Color(0xff7c8596),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
