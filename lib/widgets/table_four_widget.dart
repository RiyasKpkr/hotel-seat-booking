
import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/widgets/seat_Widget.dart';
import 'package:hotel_seat_booking/widgets/table_widget.dart';

class table_four_widget extends StatelessWidget {
  String tableCount;
   table_four_widget({
    required this.tableCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            seatWidget(
              containerHeight: 60,
              containerWidth: 7,
            ),
            const SizedBox(
              height: 5,
            ),
            seatWidget(
              containerHeight: 60,
              containerWidth: 7,
            ),
          ],
        ),
        const SizedBox(width: 10,),
        tableWidget(
           tableCount:tableCount,
          containerHeight: 125,
          containerWidth: 60,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            seatWidget(
              containerHeight: 60,
              containerWidth: 7,
            ),
            const SizedBox(
              height: 5,
            ),
            seatWidget(
              containerHeight: 60,
              containerWidth: 7,
            ),
          ],
        )
      ],
    );
  }
}



// class table_four_widget extends StatelessWidget {
//   const table_four_widget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           // mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             seatWidget(
//               containerHeight: 60,
//               containerWidth: 7,
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             seatWidget(
//               containerHeight: 60,
//               containerWidth: 7,
//             ),
//           ],
//         ),
//         const SizedBox(width: 10,),
//         tableWidget(
//           containerHeight: 125,
//           containerWidth: 60,
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         Column(
//           children: [
//             seatWidget(
//               containerHeight: 60,
//               containerWidth: 7,
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             seatWidget(
//               containerHeight: 60,
//               containerWidth: 7,
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
