
import 'package:flutter/material.dart';

class seatWidget extends StatefulWidget {
  double containerHeight;
  double containerWidth;
   seatWidget({
    Key? key,
    required this.containerHeight,
    required this.containerWidth,
  }) : super(key: key);

  @override
  State<seatWidget> createState() => _seatWidgetState();
}

class _seatWidgetState extends State<seatWidget> {
  bool seatColor=true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          seatColor=!seatColor;
        });
      },
      child: Container(
        height: widget.containerHeight,
        width: widget.containerWidth,
        // child: Text(''),
        decoration: BoxDecoration(
          color: seatColor? Colors.white:Colors.greenAccent[200],
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(3, 3),
              blurRadius: 10,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -3),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ]
        ),
      ),
    );
  }
}

// class seatWidget extends StatelessWidget {
//   const seatWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       width: 7,
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.circular(5),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black54,
//             offset: Offset(3, 3),
//             blurRadius: 10,
//             spreadRadius: 1,
//           ),
//           BoxShadow(
//             color: Colors.white,
//             offset: Offset(-3, -3),
//             blurRadius: 10,
//             spreadRadius: 1,
//           )
//         ]
//       ),
//     );
//   }
// }

