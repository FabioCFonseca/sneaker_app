import 'package:flutter/material.dart';

import '../model/brands_model.dart';

class BrandsCarousell extends StatelessWidget {
  BrandsCarousell({super.key});

  List<BrandsModel> brandsList = BrandsModel.generateBrands();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'BRANDS',
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ' SEE ALL',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandsList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      brandsList[index].image,
                      fit: BoxFit.fill,
                      width: 100,
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
