import 'package:flutter/material.dart';

import '../model/sneaker_model.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.sneaker});

  final SneakerModel sneaker;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        sneaker.description,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
