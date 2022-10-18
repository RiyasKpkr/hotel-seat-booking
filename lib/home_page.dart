// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/screens/sign_up_screen.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/icons/restarant-logo.jpg',
                color: Colors.white,
              ),
            )
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: SignUpScreen(),
      ),
    );
  }

  bool sign= false;
}
