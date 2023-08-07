import 'package:flutter/material.dart';
import 'package:flutter_itu/widgets/login/login_input.dart';

const List<String> lagnList = <String>['한국어', 'English'];
var selectLang = lagnList[0];
const List<String> authList = <String>['Local'];
var selectAuth = authList[0];

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 155,
              ),
              Container(
                width: 450,
                height: 660,
                padding: const EdgeInsets.fromLTRB(50, 80, 50, 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black.withAlpha(100),
                  border: Border.all(
                    color: const Color(0xff193941),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DropdownButton<String>(
                          value: selectLang,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(
                            color: Color(0xffc2d1d1),
                            fontSize: 15,
                          ),
                          underline: Container(
                            height: 2,
                            color: const Color(0xffc0c0c0),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              selectLang = value!;
                            });
                          },
                          items: lagnList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Container(
                      child: Image.asset("assets/images/login_future.png"),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      child: Column(
                        children: [
                          const LoginTextInput(text: '아이디'),
                          const SizedBox(
                            height: 10,
                          ),
                          const LoginTextInput(text: '비밀번호'),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                '인증 방법',
                                style: TextStyle(
                                  color: Color(0xff7c8596),
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              DropdownButton<String>(
                                value: selectAuth,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(
                                  color: Color(0xffc2d1d1),
                                  fontSize: 15,
                                ),
                                underline: Container(
                                  height: 2,
                                  color: const Color(0xffc0c0c0),
                                ),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    selectAuth = value!;
                                  });
                                },
                                items: authList.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: const Color(0xff5975a8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                      color: Color(0xff5975a8),
                                      width: 1,
                                    ),
                                  ),
                                  fixedSize: const Size(350, 50),
                                ),
                                child: const Text(
                                  '로그인',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                '※ 본 시스템은 허가된 사용자만 이용할 수 있습니다.\n부당한 방법으로 시스템에 접속하거나 정보를 삭제, 변경, 유출하는 사용자는 관련 법령에 따라 처벌 받을 수 있으니 주의하시기 바랍니다.',
                                style: TextStyle(
                                  color: Color(0xff9a9a9a),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
