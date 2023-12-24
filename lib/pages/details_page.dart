import 'package:flutter/material.dart';
import 'package:teste_flutter_21_12/widgets/main_image.dart';
import '../model/sneaker_model.dart';
import '../widgets/buy_buttom.dart';
import '../widgets/description.dart';
import '../widgets/select_size.dart';
import '../widgets/sneaker_colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.selectedSneaker});

  final SneakerModel selectedSneaker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedSneaker.name + selectedSneaker.seriesNumber,
          style: const TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              MainImage(sneaker: selectedSneaker),
              const SizedBox(
                height: 20,
              ),
              Description(sneaker: selectedSneaker),
              const SizedBox(
                height: 25,
              ),
              SneakerColors(
                sneaker: selectedSneaker,
              ),
              const SelectSize(),
              const SizedBox(
                height: 25,
              ),
              BuyButtom(sneaker: selectedSneaker),
            ],
          ),
        ),
      ),
    );
  }
}
