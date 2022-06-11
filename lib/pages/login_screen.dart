import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widget/default_text_filed.dart';
import 'package:untitled/Widget/oval_button.dart';
import 'package:untitled/model/login_for_an_exist_user.dart';
import 'package:untitled/service/post/post_service.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? rememberClient;

  _login() async {
    LoginForAnExistUser ob = {
      'userNameOrEmailAddress': emailController.text,
      'password': passwordController.text,
      'rememberClient': rememberClient
    } as LoginForAnExistUser;
    var res = await PostService().loginForAnExistUser(ob,'TokenAuth/Authenticate');
    var body = json.decode(res.body);
    if (body['success']) {
      Navigator.push(this.context, new MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('done'),
            ),
          ),
        ),
      );
    } else
      throw Exception('Error');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  DefaultTextFiled(
                    keyboardType: TextInputType.emailAddress,
                    suffixIcon: Icon(Icons.mail),
                    hintText: 'Email',
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultTextFiled(
                    suffixIcon: Icon(Icons.vpn_key),
                    obscureText: false,
                    hintText: 'Password',
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      rememberClient = value;
                    },
                    value: false,
                    title: Text(
                      'Remember me',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OvalButton(
                    onPressed: () {
                      setState(() {
                        _login();
                      });
                    },
                    title: 'Login',
                    backgroundColor: Colors.orange,
                  ),
                  SizedBox(
                    height: 220,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have account?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 111, 0, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
