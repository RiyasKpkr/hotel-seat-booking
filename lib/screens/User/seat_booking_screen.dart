// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:hotel_seat_booking/main.dart';
// import 'package:hotel_seat_booking/widgets/seat_Widget.dart';
import 'package:hotel_seat_booking/widgets/six_seat_widgeet.dart';
import 'package:hotel_seat_booking/widgets/table_four_widget.dart';
// import 'package:hotel_seat_booking/widgets/table_widget.dart';

class SeatBookingScreen extends StatefulWidget {
  String hotelName;
  String hotelImage;
  double ratingCount;
  SeatBookingScreen({
    super.key,
    required this.hotelName,
    required this.hotelImage,
    required this.ratingCount,
  });

  @override
  State<SeatBookingScreen> createState() => _SeatBookingScreenState();
}

class _SeatBookingScreenState extends State<SeatBookingScreen> {
  @override
  Widget build(BuildContext context) {
    print('>>>>>>${widget.hotelImage}');
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(widget.hotelName.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 5),
        //     child: Icon(Icons.shopping_cart),
        //   )
        // ],
      ),
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    child: Hero(
                      tag: widget.hotelName,
                      child: Image.asset(
                        widget.hotelImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 2,
                    right: 2,
                    child: RatingBarIndicator(
                      rating: widget.ratingCount,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey[300],
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        table_four_widget(
                          tableCount: '101',
                        ),
                        table_four_widget(
                          tableCount: '102',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        six_seat_widget(tableCount: '103'),
                        SizedBox(
                          height: 25,
                        ),
                        six_seat_widget(tableCount: '104'),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        table_four_widget(
                            tableCount: '105',
                            ),
                        table_four_widget(
                            tableCount: '106',
                            ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        six_seat_widget(
                          tableCount: '107',
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        six_seat_widget(
                          tableCount: '108',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
