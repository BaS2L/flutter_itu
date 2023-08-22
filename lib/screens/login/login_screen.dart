import 'package:flutter/material.dart';
import 'package:flutter_itu/service/auth_methods.dart';
import 'package:flutter_itu/utils/colors.dart';
import 'package:flutter_itu/utils/toast.dart';

const List<String> lagnList = <String>['한국어', 'English'];
var selectLang = lagnList[0];
const List<String> authList = <String>['Local'];
var selectAuth = authList[0];

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;
  String? _errorMessage;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
        _errorMessage = null;
      });

      if (_usernameController.text.isEmpty) {
        showToast('사용자 아이디를 입력하시기 바랍니다.', alertYellow);
      } else {
        try {
          final response = await login(
            _usernameController.text,
            _passwordController.text,
          );
          response.forEach((key, value) {
            if (key == 'success') {
              if (value == true) {
                Navigator.pushNamed(context, '/dashboard');
              } else {
                showToast('로그인에 실패하였습니다.', alertRed);
              }
            }
          });
        } catch (e) {
          setState(() {
            _errorMessage = e.toString();
          });
          showToast(_errorMessage.toString(), alertRed);
        }
      }
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Form(
              key: _formKey,
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
                              dropdownColor: Colors.black,
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
                              items: lagnList.map<DropdownMenuItem<String>>(
                                  (String value) {
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
                              TextFormField(
                                controller: _usernameController,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xff82aaf5),
                                      width: 1,
                                    ),
                                  ),
                                  labelText: '아이디',
                                  labelStyle: const TextStyle(
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
                                cursorColor: Colors.white,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                obscureText: true,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xff82aaf5),
                                      width: 1,
                                    ),
                                  ),
                                  labelText: '비밀번호',
                                  labelStyle: const TextStyle(
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
                                cursorColor: Colors.white,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
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
                                    dropdownColor: Colors.black,
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
                                    items: authList
                                        .map<DropdownMenuItem<String>>(
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
                                    onPressed: _submitForm,
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
                                    child: _isLoading
                                        ? const CircularProgressIndicator()
                                        : const Text(
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
                                    '',
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
          ),
        ],
      ),
    );
  }
}
