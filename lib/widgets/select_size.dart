import 'package:flutter/material.dart';

class SelectSize extends StatefulWidget {
  SelectSize({super.key});

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  String dropDownValue = 'UK';
  String currentSize = 'Select size';

  List<String> EuSizes = [
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
  List<String> UkSizes = [
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
  List<String> UsSizes = [
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
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Text(
            'Select Size: ',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple),
          ),
          SizedBox(
            width: 15,
          ),
          DropdownButton(
            value: dropDownValue,
            items: [
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
          SizedBox(
            width: 15,
          ),
          DropdownButton(
            value: currentSize,
            items: dropDownValue == 'UK'
                ? UkSizes.map((size) => DropdownMenuItem(
                      child: Text(size),
                      value: size,
                    )).toList()
                : dropDownValue == 'US'
                    ? UsSizes.map((size) => DropdownMenuItem(
                          child: Text(size),
                          value: size,
                        )).toList()
                    : EuSizes.map(
                        (size) =>
                            DropdownMenuItem(child: Text(size), value: size),
                      ).toList(),
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
