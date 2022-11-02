import 'package:flutter/material.dart';

class FoodOrderPage extends StatelessWidget {
  String hotelName;
  List foods;
  FoodOrderPage({super.key, required this.hotelName,required this.foods});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          hotelName.toUpperCase(),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.blueGrey,
        child: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black,
              height: 100,
              width: 100,
            );
          },
        ),
      ),
    );
  }
}
