import 'package:flutter/material.dart';

import '../model/sneaker_model.dart';

class MainImage extends StatefulWidget {
  const MainImage({super.key, required this.sneaker});

  final SneakerModel sneaker;

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  int _currentImage = 0;
  final PageController _pageController = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 300,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 40),
            color: Colors.grey[200],
            child: PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemCount: widget.sneaker.images.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onHorizontalDragEnd: (details) {
                      if (details.primaryVelocity! > 0) {
                        setState(() {
                          _currentImage = (_currentImage + 1) %
                              widget.sneaker.images.length;
                        });
                      } else if (details.primaryVelocity! < 0) {
                        setState(() {
                          _currentImage = (_currentImage -
                                  1 +
                                  widget.sneaker.images.length) %
                              widget.sneaker.images.length;
                        });
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      color: Colors.grey[200],
                      child: Image.asset(
                        widget.sneaker.images[_currentImage],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                })),
        Container(
          margin: const EdgeInsets.only(top: 20),
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
                    margin: const EdgeInsets.only(right: 15),
                    color: Colors.grey[200],
                    child: Image.asset(widget.sneaker.images[index]),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
