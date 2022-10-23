import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.greenAccent[300],
      child: SizedBox(
        height: 500,
        width: 300,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
