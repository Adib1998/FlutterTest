import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OvalButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color backgroundColor;

  const OvalButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.backgroundColor,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 50,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
