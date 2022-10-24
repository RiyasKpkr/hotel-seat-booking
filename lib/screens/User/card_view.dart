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
    return Row(
      children: [
        ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '3.3',
              hotelName: 'Hotel Name',
            ),
            CardWidget(
              imagePath: 'assets/hotel.jpg',
              rating: '3',
              hotelName: 'hotelName',
            ),
          ],
        ),
      ],
    );
  }
}

// class CardWidget extends StatelessWidget {
//   const CardWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 50,
//       shape: RoundedRectangleBorder(
//         side: BorderSide(
//           color: Colors.blueGrey,
//           width: 1,
//         ),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       shadowColor: Colors.black,
//       color: Colors.greenAccent[300],
//       child: SizedBox(
//         height: 275,
//         width: 225,
//         child: Stack(
//           children: [
//             Image.asset(
//               'assets/hotel.jpg',
//               height: 150,
//               width: 250,
//               fit: BoxFit.fill,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(right: 5, top: 5),
//                   height: 30,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Colors.amber,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     // ignore: prefer_const_literals_to_create_immutables
//                     children: [
//                       Icon(
//                         Icons.star,
//                       ),
//                       Text(
//                         '3.3',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
