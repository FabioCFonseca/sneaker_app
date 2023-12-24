import 'package:flutter/material.dart';

import '../model/sneaker_model.dart';

class BuyButtom extends StatefulWidget {
  BuyButtom({super.key, required this.sneaker});

  SneakerModel sneaker;
  
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
            Text('Quantity: ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple)),
            Text('$quantity',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              height: 20,
              child: ElevatedButton(
                onPressed: () => setState(() {
                  quantity = quantity > minQuantity ? quantity - 1 : minQuantity;
                }),
                child: Text(
                  '-',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[100],
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            SizedBox(
              height: 20,
              child: ElevatedButton(
                onPressed: () => setState(() {
                  quantity = quantity < maxQuantity ? quantity + 1 : maxQuantity;
                }),
                child: Text(
                  '+',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[100],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Buy $dolarSign' + '${ quantity * int.parse(widget.sneaker.price)}',
                style: TextStyle(fontSize: 22),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
            )),
      ],
    );
  }
}
