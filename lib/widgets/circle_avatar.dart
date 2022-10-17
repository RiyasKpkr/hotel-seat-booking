import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  Color backgroundColor;
  double radius;
  String imagelogo;
   CircleAvatarWidget({
    Key? key,
    required this.backgroundColor,
    required this.radius,
    required this.imagelogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius,
      foregroundImage: AssetImage(
        imagelogo,
      ),
    );
  }
}