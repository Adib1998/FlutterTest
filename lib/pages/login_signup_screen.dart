import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widget/oval_button.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Please login to continue',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              OvalButton(
                  onPressed: () {},
                  title: 'Login',
                  backgroundColor: const Color.fromRGBO(255, 111, 0, 1)),
              SizedBox(
                height: 10,
              ),
              SizedBox(
              width: 300,
              height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                    backgroundColor: MaterialStateProperty.all(
                        Colors.transparent),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side:BorderSide(
                            style: BorderStyle.solid,
                            color: const Color.fromRGBO(255, 111, 0, 1)
                          )
                      ),
                    ),
                  ),
                  child: Text(
                    'signup',
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 111, 0, 1),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
