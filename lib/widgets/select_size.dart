import 'package:flutter/material.dart';

class SelectSize extends StatefulWidget {
  const SelectSize({super.key});

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  String dropDownValue = 'UK';
  String currentSize = 'Select size';

  List<String> euSizes = [
    'Select size',
    '39',
    '40',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
  ];
  List<String> ukSizes = [
    'Select size',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
  ];
  List<String> usSizes = [
    'Select size',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          const Text(
            'Select Size: ',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple),
          ),
          const SizedBox(
            width: 15,
          ),
          DropdownButton(
            value: dropDownValue,
            items: const [
              DropdownMenuItem(
                value: 'UK',
                child: Text('UK'),
              ),
              DropdownMenuItem(
                value: 'US',
                child: Text('US'),
              ),
              DropdownMenuItem(
                value: 'EU',
                child: Text('EU'),
              ),
            ],
            onChanged: (String? value) {
              setState(() {
                dropDownValue = value!;
                currentSize = 'Select size';
              });
            },
          ),
          const SizedBox(
            width: 15,
          ),
          DropdownButton(
            value: currentSize,
            items: dropDownValue == 'UK'
                ? ukSizes
                    .map((size) => DropdownMenuItem(
                          value: size,
                          child: Text(size),
                        ))
                    .toList()
                : dropDownValue == 'US'
                    ? usSizes
                        .map((size) => DropdownMenuItem(
                              value: size,
                              child: Text(size),
                            ))
                        .toList()
                    : euSizes
                        .map(
                          (size) =>
                              DropdownMenuItem(value: size, child: Text(size)),
                        )
                        .toList(),
            onChanged: (value) {
              setState(() {
                currentSize = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
