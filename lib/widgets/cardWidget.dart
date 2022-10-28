import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/widgets/text_widget.dart';

class CardWidget extends StatelessWidget {
  String imagePath;
  String rating;
  String hotelName;
  String locationName;
  String foodItems;
  CardWidget({
    Key? key,
    required this.imagePath,
    required this.rating,
    required this.hotelName,
    required this.locationName,
    required this.foodItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.blueGrey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.black,
      color: Colors.greenAccent[300],
      child: Container(
        height: 275,
        width: 225,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 150,
                width: 250,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 160,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextWidget(
                      data: hotelName,
                      fontColor: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.place),
                      TextWidget(
                        data: locationName,
                        fontColor: Colors.black,
                        fontSize: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      TextWidget(
                        data: '($foodItems)',
                        fontColor: Colors.black,
                        fontSize: 12,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5,),
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.star,
                      ),
                      Text(
                        rating,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
