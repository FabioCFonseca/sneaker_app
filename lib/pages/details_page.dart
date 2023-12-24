import 'package:flutter/material.dart';
import 'package:teste_flutter_21_12/widgets/main_image.dart';
import '../model/sneaker_model.dart';
import '../widgets/buy_buttom.dart';
import '../widgets/description.dart';
import '../widgets/select_size.dart';
import '../widgets/sneaker_colors.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({super.key, required this.selectedSneaker});

  SneakerModel selectedSneaker;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.selectedSneaker.name + widget.selectedSneaker.seriesNumber,
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              MainImage(sneaker: widget.selectedSneaker),
              SizedBox(height: 20,),
              Description(sneaker: widget.selectedSneaker),
              SizedBox(height: 25,),
              SneakerColors(sneaker: widget.selectedSneaker,),
              SelectSize(),
              SizedBox(height: 25,),
              BuyButtom(sneaker: widget.selectedSneaker),
            ],
          ),
        ),
      ),
    );
  }
}
