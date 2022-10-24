// ignore_for_file: camel_case_types, prefer_const_constructors

// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/constants/constants.dart';
import 'package:hotel_seat_booking/models/hotel_model.dart';
import 'package:hotel_seat_booking/screens/User/card_view.dart';
import 'package:hotel_seat_booking/widgets/text_widget.dart';
import 'package:searchfield/searchfield.dart';

class userHomePage extends StatefulWidget {
  const userHomePage({super.key});

  @override
  State<userHomePage> createState() => _userHomePageState();
}

class _userHomePageState extends State<userHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SearchField<Hotel>(
                    searchStyle: TextStyle(
                      fontSize: 15,
                    ),
                    searchInputDecoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Search Hotel',
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade100,
                      ),
                    ),
                    suggestions: Constants.res
                        .map(
                          (e) => SearchFieldListItem(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(e.hotelName),
                            ),
                            e.hotelName,
                            item: e,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    data: 'Near You',
                    fontColor: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(
                    data: 'More',
                    fontColor: Colors.blue,
                    fontSize: 13,
                  ),
                ],
              ),
              CardView()
            ],
          ),
        ),
      ),
    );
  }
}
