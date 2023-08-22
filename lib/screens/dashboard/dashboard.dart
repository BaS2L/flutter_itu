import 'package:flutter/material.dart';
import 'package:flutter_itu/utils/colors.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: MediaQuery.of(context).size.width - 244,
      height: MediaQuery.of(context).size.height - 60,
      child: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width - 100,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                TopWidget(
                  text: 'CPU',
                ),
                SizedBox(
                  width: 10,
                ),
                TopWidget(
                  text: '메모리',
                ),
                SizedBox(
                  width: 10,
                ),
                TopWidget(
                  text: 'Tx (bps)',
                ),
                SizedBox(
                  width: 10,
                ),
                TopWidget(
                  text: 'Rx (bps)',
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                TopWidget(
                  text: '세션',
                ),
                SizedBox(
                  width: 10,
                ),
                TopWidget(
                  text: '방화벽 세션 차단',
                ),
                SizedBox(
                  width: 10,
                ),
                TopWidget(
                  text: '디스크(Root)',
                ),
                SizedBox(
                  width: 10,
                ),
                TopWidget(
                  text: '디스크(Log)',
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: const Color(0xff272b32),
                width: 1655,
                height: 410,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopWidget extends StatefulWidget {
  final String text;
  const TopWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: Container(
        width: 404,
        height: 60,
        decoration: BoxDecoration(
          color:
              _isHovering ? const Color(0xff373d47) : const Color(0xff272b32),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: const Color(0xff373d47),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Flexible(
              flex: 1,
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Color(0xff7c8596),
                  fontSize: 16,
                ),
              ),
            ),
            const Flexible(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    'Now',
                    style: TextStyle(
                      color: Color(0xff7c8596),
                      fontSize: 11,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                          color: Color(0xff82aaf5),
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '%',
                        style: TextStyle(
                          color: Color(0xff82aaf5),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              children: [
                Text(
                  'Max',
                  style: TextStyle(
                    color: fontGray,
                    fontSize: 11,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        color: fontGray,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '%',
                      style: TextStyle(
                        color: fontGray,
                        fontSize: 11,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class TopWidget extends StatefulWidget {
//   final String text;
//   const TopWidget({
//     super.key,
//     required this.text,
//   });

//   @override
//   State<TopWidget> createState() => _TopWidgetState();
// }

// class _TopWidgetState extends State<TopWidget> {
//   bool _isHovering = false;
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovering = true),
//       onExit: (_) => setState(() => _isHovering = false),
//       cursor: SystemMouseCursors.click,
//       child: Container(
//         width: 404,
//         height: 60,
//         decoration: BoxDecoration(
//           color:
//               _isHovering ? const Color(0xff373d47) : const Color(0xff272b32),
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(
//             color: const Color(0xff373d47),
//             width: 1,
//           ),
//         ),
//         child: const Row(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 children: [
//                   Text(
//                     'cpu',
                    // style: TextStyle(
                    //   color: Color(0xff7c8596),
                    //   fontSize: 16,
                    // ),
//                   ),
//                   SizedBox(
//                     width: 270,
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'Now',
//                         style: TextStyle(
//                           color: Color(0xff7c8596),
//                           fontSize: 11,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             '0',
//                             style: TextStyle(
//                               color: Color(0xff82aaf5),
//                               fontSize: 20,
//                             ),
//                           ),
//                           Text(
//                             '%',
//                             style: TextStyle(
//                               color: Color(0xff82aaf5),
//                               fontSize: 11,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'Max',
//                         style: TextStyle(
//                           color: fontGray,
//                           fontSize: 11,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             '0',
//                             style: TextStyle(
//                               color: fontGray,
//                               fontSize: 20,
//                             ),
//                           ),
//                           Text(
//                             '%',
//                             style: TextStyle(
//                               color: fontGray,
//                               fontSize: 11,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
