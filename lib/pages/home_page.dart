import 'package:flutter/material.dart';

import '../widgets/brands_carousell.dart';
import '../widgets/custom_bottom_navbar.dart';
import '../widgets/custom_searchbar.dart';
import '../widgets/sneakers_carousell.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const CustomSearchBar(),
              const SizedBox(
                height: 45,
              ),
              const Flexible(flex: 5, child: SneakersCarousell()),
              const SizedBox(
                height: 60,
              ),
              Flexible(flex: 2, child: BrandsCarousell()),
              const SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
    );
  }
}
