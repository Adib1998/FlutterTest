import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DefaultDropDown extends StatefulWidget {
  DefaultDropDown(
      {Key? key,
      required this.list,
      required this.hintText,
      required this.controller,
      this.width = double.infinity,
      this.background = Colors.white})
      : super(key: key);
  final List<String> list;
  final String hintText;
  Color background;
  double width;
  TextEditingController controller = TextEditingController();

  @override
  _DefaultDropDownState createState() => _DefaultDropDownState();
}

class _DefaultDropDownState extends State<DefaultDropDown> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      width: widget.width,
      height: 50,
      child: DropdownButton(
          underline: SizedBox(),
          isExpanded: true,
          hint: Text(
            widget.hintText,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),
          ),
          items: widget.list.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(
                items,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              widget.controller.text = newValue.toString();
            });
          }),
    );
  }
}
