import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.black),
          suffixIcon: Icon(Icons.camera_alt, color: Colors.black,),
          label: Text('Search Sneakers', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18),),
        ),
      ),
    );
  }
}