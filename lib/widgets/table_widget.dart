import 'package:flutter/material.dart';

class tableWidget extends StatefulWidget {
  double containerHeight;
  double containerWidth;
  String tableCount;

  tableWidget({
    Key? key,
    required this.containerHeight,
    required this.containerWidth,
    required this.tableCount,
  }) : super(
          key: key,
        );

  @override
  State<tableWidget> createState() => _tableWidgetState();
}

class _tableWidgetState extends State<tableWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 25, left: 50),
      height: widget.containerHeight,
      width: widget.containerWidth,
      child: Center(
        child: Text(
          widget.tableCount
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(10),
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
        ],
      ),
    );
  }
}

// class tableWidget extends StatelessWidget {
//   const tableWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 25, left: 50),
//       height: 125,
//       width: 60,
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         // borderRadius: BorderRadius.circular(10),
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
//         ],
//       ),
//     );
//   }
// }
