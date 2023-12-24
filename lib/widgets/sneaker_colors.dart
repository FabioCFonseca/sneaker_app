import 'package:flutter/material.dart';

import '../model/sneaker_model.dart';

class SneakerColors extends StatelessWidget {
  const SneakerColors({super.key, required this.sneaker});

  final SneakerModel sneaker;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        children: [
          const Text(
            'Color:',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sneaker.colors.length,
                itemBuilder: (contetx, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: sneaker.colors[index],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
