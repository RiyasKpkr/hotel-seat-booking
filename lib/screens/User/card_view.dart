// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/widgets/cardWidget.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        Row(
          children: [
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '3.3',
              hotelName: 'HotelName',
            ),
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '4.3',
              hotelName: 'HotelName',
            ),
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '3.3',
              hotelName: 'HotelName',
            ),
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '4.3',
              hotelName: 'HotelName',
            ),
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '3.3',
              hotelName: 'Hotel Name',
            ),
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '4.3',
              hotelName: 'HotelName',
            ),
          ],
        ),
      ]),
    );
  }
}
