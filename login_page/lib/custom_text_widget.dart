import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.postIcon,
    this.preIcon,
    this.validator,
    this.obscureText,
  }) : super(key: key);

  dynamic? validator;
  TextEditingController? controller;
  IconData? preIcon, postIcon;
  String? hintText;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
              color: Colors.lightBlue, width: 1, style: BorderStyle.solid),
        ),
        fillColor: Colors.white60,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        prefixIcon: Container(
          margin: EdgeInsets.all(2.0),
          height: 55,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Icon(
            preIcon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
