// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/constants/constants.dart';
import 'package:hotel_seat_booking/screens/User/seat_booking_screen.dart';
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
      child: ListView.builder(
        itemCount: Constants.res.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SeatBookingScreen(hotelName: '${Constants.res[index].hotelName}',);
                      },
                    ),
                  );
                },
                child: CardWidget(
                  imagePath: 'assets/hotel.jpg',
                  rating: '3.3',
                  hotelName: '${Constants.res[index].hotelName}',
                  foodItems: 'food List',
                  locationName: '${Constants.res[index].hotelLocation}',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
