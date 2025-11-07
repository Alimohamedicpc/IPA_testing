import 'package:fastfood/constant.dart';
import 'package:fastfood/models/popular_model.dart';
import 'package:fastfood/models/product_model.dart';
import 'package:fastfood/widgets/Popular_item.dart';
import 'package:fastfood/widgets/product_card.dart';
import 'package:fastfood/widgets/seeall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Discover extends StatelessWidget {
  Discover({super.key});
  final List<productModel> products = [
    productModel(
      "assets/images/advertising-product-photo-large-burger-600nw-2468693627.webp",
      "Burger",
      "A hamburger, or simply a burger.",
      r" $150",
      " 40-50min ",
      "9.5",
    ),
    productModel(
      "assets/images/PastaCarbonara_Shot7_13.webp",
      "  Pasta",
      "   Pasta is a type of food.              ",
      r" $35",
      " 35-40min ",
      "8",
    ),
    productModel(
      "assets/images/classic-cheese-pizza-FT-RECIPE0422-31a2c938fc2546c9a07b7011658cfd05.jpg",
      " Pizza",
      "  Pizza is an Italian dish.             ",
      r" $35",
      " 30-35min ",
      "8",
    ),
    productModel(
      "assets/images/intro-1570545965.jpg",
      "Fries ",
      "The fries is a starchy                 ",
      r" $50",
      " 50-55min ",
      "8.5",
    ),
  ];
  final List<PopularModel> popular = [
    PopularModel(
      "assets/images/shutterstock_1944094414-e1697132031882.jpg",
      "Hot Burger",
    ),
    PopularModel(
      "assets/images/Home_Crepe_Potato_Crepe_C638526592016626458.jpg",
      "Crape Potato",
    ),
    PopularModel("assets/images/images (3).jfif", "Italian Pizza"),
    PopularModel("assets/images/images (5).jfif", "Fried Chicken"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(Icons.home, color: kprimarycolor),
                      SizedBox(width: 10),
                      Text(
                        "Home, ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text("JI. Soekarno Hatta 15A"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/fast-food-best-daily-offer-banner-template-vector-26320740.jpg",
                    height: 250,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 33),
                const Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Row(
                    children: [
                      Text(
                        "Fastest delivery ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Text("🔥", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 78),
                      Seeall(),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: products[index]);
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 11, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Popular items ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                      ),
                      Text("👏", style: TextStyle(fontSize: 20)),
                      SizedBox(width: 110),
                      Seeall(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return PopularCard(popular: popular[index]);
                    },
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
