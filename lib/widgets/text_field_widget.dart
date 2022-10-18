import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hintText;
  IconData icons;
  IconData? suffixIcon;
  bool obscureText = false;

  TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.icons,
    required this.obscureText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Colors.white.withOpacity(.8),
        fontSize: 14,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        prefixIcon: Icon(
          icons,
          color: Colors.white.withOpacity(.8),
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 35,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: Colors.white.withOpacity(.8),
          size: 20,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white60,
          fontSize: 14,
        ),
      ),
    );
  }
}