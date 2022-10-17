// import 'dart:html';

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String data;
  double fontSize;
  Color fontColor;
  FontWeight? fontWeight;
   TextWidget({
    Key? key,
    required this.data,
    required this.fontColor,
    required this.fontSize,
     this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        color: fontColor,
        fontWeight: fontWeight,
      ),
    );
  }
}