// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SeatBookingScreen extends StatelessWidget {
  String hotelName;
  SeatBookingScreen({
    super.key,
    required this.hotelName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hotelName.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      backgroundColor: Colors.grey,
      body: Container(),
    );
  }
}
