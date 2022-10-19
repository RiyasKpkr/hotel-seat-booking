// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:hotel_seat_booking/screens/restaurants_signup_screen.dart';
// import 'package:hotel_seat_booking/screens/restaurants_signin_screen.dart';
// import 'package:hotel_seat_booking/widgets/text_widget.dart';

class RestaurantsLoginScreen extends StatelessWidget {
  const RestaurantsLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/resta.png',
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
            border: 1,
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 150,
                    width: 230,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFffffff).withAlpha(100),
                          Color(0xFFffffff).withAlpha(55),
                        ],
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 3,
                          color: Colors.black12,
                        )
                      ],
                      borderRadius: BorderRadius.circular(200).copyWith(
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFffffff).withAlpha(100),
                            Color(0xFFffffff).withAlpha(55),
                          ],
                        ),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 3,
                            color: Colors.black12,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(200).copyWith(
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Let\'s  ',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              // ignore: prefer_const_literals_to_create_immutables
                              shadows: [
                                Shadow(
                                  color: Colors.black45,
                                  offset: Offset(1, 1),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'login',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              // ignore: prefer_const_literals_to_create_immutables
                              shadows: [
                                Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30)
                        .copyWith(bottom: 10),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.5,
                      ),
                      decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white70,
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.5,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30).copyWith(
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.white70,
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0),
                          ),
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30)
                        .copyWith(bottom: 10),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.5,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIconConstraints: BoxConstraints(minWidth: 45),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white70,
                          size: 22,
                        ),
                        suffixIconConstraints: BoxConstraints(
                          minWidth: 45,
                          maxWidth: 46,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.white70,
                          size: 22,
                        ),
                        border: InputBorder.none,
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          fontSize: 14.5,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0),
                          ),
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30).copyWith(
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0),
                          ),
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text(
                          'forgot password',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 53,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.black12.withOpacity(.2),
                          offset: Offset(2, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30).copyWith(
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFffffff).withAlpha(55),
                          Color(0xFFffffff).withAlpha(55),
                        ],
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Already I have account ',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>restaurantSignUpScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(30).copyWith(
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
