import 'package:flutter/material.dart';
import 'package:hotel_seat_booking/widgets/seat_Widget.dart';
import 'package:hotel_seat_booking/widgets/table_widget.dart';

class six_seat_widget extends StatelessWidget {
  String tableCount;
  six_seat_widget({
    Key? key,
    required this.tableCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            seatWidget(containerHeight: 7, containerWidth: 60),
            SizedBox(
              width: 5,
            ),
            seatWidget(containerHeight: 7, containerWidth: 60),
            SizedBox(
              width: 5,
            ),
            seatWidget(containerHeight: 7, containerWidth: 60),
          ],
        ),
        SizedBox(height: 10),
        tableWidget(
          tableCount: tableCount,
          containerHeight: 50,
          containerWidth: 180,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            seatWidget(containerHeight: 7, containerWidth: 60),
            SizedBox(
              width: 5,
            ),
            seatWidget(containerHeight: 7, containerWidth: 60),
            SizedBox(
              width: 5,
            ),
            seatWidget(containerHeight: 7, containerWidth: 60),
          ],
        ),
      ],
    );
  }
}
