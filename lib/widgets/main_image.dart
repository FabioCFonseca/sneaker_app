import 'package:flutter/material.dart';

import '../model/sneaker_model.dart';

class MainImage extends StatefulWidget {
  MainImage({super.key, required this.sneaker});

  SneakerModel sneaker;

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  int _currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                  margin: EdgeInsets.only(top: 40),
                  color: Colors.grey[200],
                  child: Image.asset(
                      widget.sneaker.images[_currentImage])),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.sneaker.images.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentImage = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          color: Colors.grey[200],
                          child:
                              Image.asset(widget.sneaker.images[index]),
                        ),
                      );
                    }),
              ),
      ],
    );
  }
}