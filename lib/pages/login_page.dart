// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:hotel_seat_booking/widgets/circle_avatar.dart';
import 'package:hotel_seat_booking/widgets/text_field_widget.dart';
import 'package:hotel_seat_booking/widgets/text_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Colors.amber,
      // child: Text('Login'),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/img.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: GlassmorphicContainer(
          width: 350,
          height: 600,
          borderRadius: 15,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withAlpha(10),
              Color(0xFFffffff).withAlpha(10),
            ],
            stops: [
              0.3,
              1,
            ],
          ),
          border: 2,
          blur: 1,
          borderGradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Color(0xFFffffff).withAlpha(100),
              Color(0xFFffffff).withAlpha(55),
              Color(0xFFffffff).withAlpha(10),
            ],
            stops: [0.06, 0.95, 1],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextWidget(
                      data: 'Sign up',
                      fontColor: Colors.white70,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TextWidget(
                  data: 'Never eat More than you can life',
                  fontColor: Colors.white70,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 25,),
                TextFieldWidget(
                  hintText: 'Enter Your Email',
                  icons: Icons.email,
                  obscureText: false,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFieldWidget(
                  hintText: 'Enter Your Number',
                  icons: Icons.phone,
                  obscureText: false,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFieldWidget(
                  hintText: 'Enter Your Password',
                  icons: Icons.lock,
                  obscureText: true,
                  suffixIcon: Icons.visibility_off,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget password',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 45,
                  width: 320,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Text(
                    'Sign IN',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white.withOpacity(.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      data: 'Already A Member..!   ',
                      fontColor: Colors.white70,
                      fontSize: 15,
                    ),
                    TextWidget(
                      data: 'Sign Up',
                      fontSize: 15,
                      fontColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Container(
                        height: 1,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextWidget(
                      data: 'OR',
                      fontColor: Colors.white,
                      fontSize: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.white70,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatarWidget(
                      backgroundColor: Colors.black,
                      imagelogo: 'assets/icons/google-logo.png',
                      radius: 20,
                    ),
                    CircleAvatarWidget(
                      backgroundColor: Colors.white,
                      radius: 20,
                      imagelogo: 'assets/icons/facebook-logo.png',
                    ),
                    CircleAvatarWidget(
                      backgroundColor: Colors.white,
                      radius: 20,
                      imagelogo: 'assets/icons/apple-logo.png',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
