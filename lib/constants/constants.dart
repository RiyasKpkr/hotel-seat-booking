import 'package:hotel_seat_booking/models/food_model.dart';
import 'package:hotel_seat_booking/models/hotel_model.dart';

class Constants {
 static List<Hotel> res = [
    Hotel(
      hotelLocation: 'Calicut',
      hotelMobileNumber: 9898989898,
      hotelName: 'Sagar',
      hotelRating: 4.4,
      foodList: [
        Food(
          foodId: 123,
          foodName: 'Biriyani',
          foodPrice: 120,
          Description: 'Description',
        ),
        Food(
          foodId: 456,
          foodName: 'Kuzhi Mandhi',
          foodPrice: 180,
          Description: 'asdfdgdfgdsfh',
        ),
        Food(
          foodId: 567,
          foodName: 'Alfaham',
          foodPrice: 120,
          Description: 'Description',
        ),
      ],
    ),
    Hotel(
      hotelName: 'rahamat',
      hotelLocation: 'Calicut',
      hotelMobileNumber: 1212121212,
      foodList: [
        Food(
          foodId: 12344,
          foodName: 'beef Biriyani',
          foodPrice: 130,
          Description: 'Description',
        ),
        Food(
          foodId: 456,
          foodName: 'chiken Biriyani',
          foodPrice: 140,
          Description: 'Description',
        ),
      ],
    ),
    Hotel(
      hotelName: 'Chiking',
      hotelLocation: 'calicut',
      hotelMobileNumber: 12121212112,
      foodList: [
        Food(
          foodId: 456,
          foodName: 'fride Chiken',
          foodPrice: 455,
          Description: 'Description',
        ),
        Food(
          foodId: 776,
          foodName: 'dsfsd',
          foodPrice: 466,
          Description: 'Description',
        ),
      ],
    ),
  ];
}
