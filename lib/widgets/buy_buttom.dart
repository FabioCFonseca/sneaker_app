import 'package:flutter/material.dart';

import '../model/sneaker_model.dart';

class BuyButtom extends StatefulWidget {
  const BuyButtom({super.key, required this.sneaker});

  final SneakerModel sneaker;

  @override
  State<BuyButtom> createState() => _BuyButtomState();
}

class _BuyButtomState extends State<BuyButtom> {
  int quantity = 1;
  static const minQuantity = 1;
  static const maxQuantity = 5;
  String dolarSign = r'$';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Quantity: ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple)),
            Text('$quantity',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              height: 20,
              child: ElevatedButton(
                onPressed: () => setState(() {
                  quantity =
                      quantity > minQuantity ? quantity - 1 : minQuantity;
                }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[100],
                ),
                child: const Text(
                  '-',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              height: 20,
              child: ElevatedButton(
                onPressed: () => setState(() {
                  quantity =
                      quantity < maxQuantity ? quantity + 1 : maxQuantity;
                }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[100],
                ),
                child: const Text(
                  '+',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: Text(
                'Buy $dolarSign'
                '${quantity * int.parse(widget.sneaker.price)}',
                style: const TextStyle(fontSize: 22),
              ),
            )),
      ],
    );
  }
}
