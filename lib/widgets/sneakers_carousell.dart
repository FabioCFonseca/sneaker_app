import 'package:flutter/material.dart';
import 'package:teste_flutter_21_12/model/sneaker_model.dart';
import 'package:teste_flutter_21_12/pages/details_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SneakersCarousell extends StatelessWidget {
  SneakersCarousell({super.key});

  final List<SneakerModel> sneakerList = SneakerModel.generateSneaker();

  String dolarSign = r'$';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NEW RELEASES',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  padEnds: false,
                  height: 400,
                  viewportFraction: 0.75,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                itemCount: sneakerList.length,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                    selectedSneaker: sneakerList[index],
                                  )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: sneakerList[index].cardBgColor,
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            sneakerList[index].images[0],
                          ),
                          Positioned(
                              top: 20,
                              left: 15,
                              child: Text(
                                dolarSign + sneakerList[index].price,
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                            bottom: 60,
                            left: 15,
                            child: Text(
                              sneakerList[index].name,
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Positioned(
                              bottom: 25,
                              left: 15,
                              child: Text(
                                sneakerList[index].seriesNumber,
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
