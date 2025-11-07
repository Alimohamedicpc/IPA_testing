import 'package:fastfood/models/favourite_model.dart';
import 'package:fastfood/widgets/Favourite_card.dart';
import 'package:fastfood/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Favorite extends StatelessWidget {
  Favorite({super.key});
  final List<favourite_model> favorites = [
    favourite_model(
      "Shrimp pizza",
      "assets/images/shrimp-fra-diavolo-pizza-1.webp",
      "A seafood lover's dream",
      r"$30",
      "30-50min",
      "8.4",
    ),
    favourite_model(
      "Creme brulee",
      "assets/images/cremebrulee_thumbnail.jpg",
      "     Velvety caramelized delight",
      r"$50",
      "25-30min",
      "8.0",
    ),
    favourite_model(
      "Fries              ",
      "assets/images/intro-1570545965.jpg",
      "The fries is a starchy     ",
      r"$25",
      "30-40min",
      "8.2",
    ),
    favourite_model(
      "Special Food ",
      "assets/images/00ed390bb97eef0ec52bda0665badd65.jpg",
      "Burger with French Fries",
      r"$70",
      "20-30min",
      "9.0",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Search_bar(),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: const Border.fromBorderSide(
                BorderSide(color: Colors.black),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    width: 170,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color(0xfff83b01),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 45, top: 10),
                      child: Text(
                        "Food Items",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Text("Restaurants"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                return FavouriteCard(favourite: favorites[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
