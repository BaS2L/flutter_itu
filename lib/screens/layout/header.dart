import 'package:flutter/material.dart';
import 'package:flutter_itu/utils/colors.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: const BoxDecoration(color: primaryColor),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
            ),
            const Flexible(
              flex: 1,
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            const Flexible(
              flex: 1,
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 185,
                height: 20,
              ),
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Container(
                  width: 134,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color(0xff383e48),
                        width: 1,
                      ),
                      right: BorderSide(
                        color: Color(0xff383e48),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color(0xff383e48),
                        width: 1,
                      ),
                      right: BorderSide(
                        color: Color(0xff383e48),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 226,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color(0xff383e48),
                        width: 1,
                      ),
                      right: BorderSide(
                        color: Color(0xff383e48),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 226,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'ID: future',
                            style: TextStyle(
                              color: fontGray,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '2023-08-09 14:52',
                            style: TextStyle(
                              color: fontGray,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.logout,
                        size: 26,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
