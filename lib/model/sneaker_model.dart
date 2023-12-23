import 'package:flutter/material.dart';

class SneakerModel {
  String price;
  String name;
  String seriesNumber;
  List<String> images;
  String description;
  List<MaterialColor> colors;

  SneakerModel({
    required this.price,
    required this.name,
    required this.seriesNumber,
    required this.images,
    required this.description,
    required this.colors,
  });

  static List<SneakerModel> generateSneaker() {
    return [
      SneakerModel(
        price: '165',
        name: 'AIR MAX TAVAS',
        seriesNumber: '001',
        images: [
          'assets/1.png',
          'assets/1.1.png',
          'assets/1.2.png',
          'assets/1.3.png',
        ],
        description:
            'Air Max TAVAS 001 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
        colors: [
          Colors.blue,
          Colors.red,
          Colors.yellow,
          Colors.purple,
        ],
      ),
      SneakerModel(
          price: '265',
          name: 'POCKET FLY DM',
          seriesNumber: '03',
          images: [
            'assets/2.png',
            'assets/2.1.png',
            'assets/2.2.png',
          ],
          description:
              'Pocket Fly DM 03 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
          colors: [
            Colors.blue,
            Colors.grey,
            Colors.red,
          ]),
    ];
  }
}
