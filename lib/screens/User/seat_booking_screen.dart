// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hotel_seat_booking/constants/constants.dart';
import 'package:hotel_seat_booking/screens/User/food_order_page.dart';
import 'package:hotel_seat_booking/widgets/six_seat_widgeet.dart';
import 'package:hotel_seat_booking/widgets/table_four_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SeatBookingScreen extends StatefulWidget {
  String hotelName;
  String hotelImage;
  double ratingCount;
  List foods;
  SeatBookingScreen({
    super.key,
    required this.hotelName,
    required this.hotelImage,
    required this.ratingCount,
    required this.foods,
  });

  @override
  State<SeatBookingScreen> createState() => _SeatBookingScreenState();
}

class _SeatBookingScreenState extends State<SeatBookingScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    print('>>>>>>${widget.hotelImage}');
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(widget.hotelName.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
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
              Stack(
                children: [
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
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(4, 4),
                            spreadRadius: 2,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: FloatingActionButton(
                        splashColor: Colors.red,
                        focusColor: Colors.green,
                        backgroundColor: Colors.greenAccent,
                        onPressed: () {
                          print('Food order page');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return FoodOrderPage(hotelName: widget.hotelName,foods: [widget.foods],);
                              },
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 180,
            child: Container(
              height: 30,
              child: SmoothPageIndicator(
                effect: SlideEffect(
                  activeDotColor: Colors.red,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
                controller: _pageController,
                count: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
