import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextFiled extends StatelessWidget {
  const DefaultTextFiled({Key? key, this.hintText, this.suffixIcon, this.obscureText=false, this.keyboardType,required this.controller}) : super(key: key);
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller,
      keyboardType: keyboardType,
      obscureText:obscureText ,
      decoration: InputDecoration(
            hintText: hintText,
            suffixIcon:suffixIcon ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Colors.black,
              ),

            ),

          ),
        );
  }
}
