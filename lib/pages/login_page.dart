// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

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
          image: NetworkImage(
            'https://img.xcitefun.net/users/2015/01/382649,xcitefun-philippines-tour-2.jpg',
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
              Color(0xFFffffff).withAlpha(55),
              Color(0xFFffffff).withAlpha(45),
            ],
            stops: [
              0.3,
              1,
            ],
          ),
          border: 2,
          blur: 7,
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white.withOpacity(.8),
                      size: 20,
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 35,
                    ),
                    hintText: 'Enter Your email',
                    hintStyle: TextStyle(
                      color: Colors.white60,
                      fontSize: 14,
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white.withOpacity(.8),
                      size: 20,
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 35,
                    ),
                    hintText: 'Enter Your password',
                    hintStyle: TextStyle(
                      color: Colors.white60,
                      fontSize: 14,
                    ),
                  ),
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
                SizedBox(height: 12,),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
