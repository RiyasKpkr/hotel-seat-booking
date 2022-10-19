// import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/models/food_model.dart';

class Hotel{
  Hotel({
    required this.hotelName,
     this.hotelRating,
     required this.hotelLocation,
     required this.hotelMobileNumber,
     required this.foodList,
  });
  String hotelName;
  double? hotelRating;
  String hotelLocation;
  int hotelMobileNumber;
  List<Food>? foodList;
}
