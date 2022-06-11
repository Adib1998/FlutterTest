import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widget/default_text_filed.dart';
import 'package:untitled/Widget/drop_down.dart';
import 'package:untitled/Widget/oval_button.dart';
import 'package:untitled/model/register_user_model.dart';
import 'package:untitled/service/post/post_service.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController cityIdController = TextEditingController();
  TextEditingController countryIdController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  _signup() async {
    RegisterUserModel ob = {
      'name': nameController.text,
      'gender': genderController.text,
      'age': ageController.text,
      'cityId': cityIdController.text,
      'countryId': countryIdController.text,
      'phoneNumber': phoneController.text,
      'emailAddress': emailController.text,
      'password': passwordController.text,
      // 'avatar' : json['avatar'],
    } as RegisterUserModel;
    var res = await PostService().registerForNewUser(ob, 'TokenAuth/Authenticate');
    var body = json.decode(res.body);
    if (body['success']) {
      Navigator.push(
        this.context,
        new MaterialPageRoute(
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
    return Scaffold (
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
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Signup',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.image),
                      Icon(Icons.credit_card),
                    ],
                  ),
                  DefaultTextFiled(
                    hintText: 'Name',
                    controller: nameController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultTextFiled(
                    hintText: 'Age',
                    controller: ageController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultDropDown(
                    list: ['male', 'female'],
                    hintText: 'Gender',
                    controller: genderController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultDropDown(
                    list: ['syr', 'leb'],
                    hintText: 'Country',
                    controller: countryIdController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultDropDown(
                    list: ['damas', 'daraa'],
                    hintText: 'City',
                    controller: cityIdController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultTextFiled(
                    keyboardType: TextInputType.phone,
                    hintText: 'Phone Number',
                    controller: phoneController,
                  ),
                  SizedBox(
                    height: 10,
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
                    obscureText:true,
                    hintText: 'Password',
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultTextFiled(
                    suffixIcon: Icon(Icons.vpn_key),
                    obscureText: true,
                    hintText: 'Reenter Password',
                    controller: rePasswordController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (value) {},
                          value: false,
                          title: Text(
                            'Accept the',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Terms & Services',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OvalButton(
                    onPressed: () {
                      _signup();
                    },
                    title: 'signup',
                    backgroundColor: Colors.orange,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
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
