import 'package:flutter/material.dart';

class SelectSize extends StatelessWidget {
  const SelectSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Text('Select Size: ', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple),)
        ],
      ),
    );
  }
}