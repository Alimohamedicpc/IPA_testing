import 'package:fastfood/constant.dart';
import 'package:fastfood/models/category_model.dart';
import 'package:fastfood/models/special_model.dart';
import 'package:fastfood/widgets/category_card.dart';
import 'package:fastfood/widgets/seeall.dart';
import 'package:fastfood/widgets/special_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Restaurant extends StatelessWidget {
  Restaurant({super.key});
  List<CategoryModel> categories = [
    CategoryModel(
      "assets/images/ar-breakfastsandwich-TT-BK-SaraHaas-4x3-90278acab69145949563c5154600ce0d.jpg",
      "Brunch",
      "94 places",
    ),
    CategoryModel(
      "assets/images/shutterstock_1773695441-min.jpg",
      "Sea     ",
      "43 places",
    ),
    CategoryModel(
      "assets/images/Fried-Ice-Cream-Square-.webp",
      " Dessert",
      "38 places",
    ),
    CategoryModel("assets/images/images (8).jfif", "Pizza  ", "40 places"),
  ];
  List<special_model> specials = [
    special_model(
      "Tasty bowl",
      "Choose from a variety of bowl options and tas.",
      r" $30",
      " 49-50min",
      " 9.2",
      "assets/images/2a4d4801-695e-4baf-a051-8a387405fd48.avif",
    ),
    special_model(
      "UpFlip       ",
      "Choose from a variety of bowl options and tas.",
      r" $25",
      " 30-50min",
      " 8.5",
      "assets/images/Fast-food-spread.jpg",
    ),
    special_model(
      "Italian       ",
      "Choose from a variety of bowl options and tas.",
      r" $20",
      " 25-50min",
      " 8.7",
      "assets/images/1200x0.jpg",
    ),
    special_model(
      "Thai Food ",
      "Choose from a variety of bowl options and tas.",
      r" $15",
      " 20-30min",
      " 8.4",
      "assets/images/zn09gw90cg2b1.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 12),
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
            ],
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Text(
                  "Restaurants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(width: 165),
                Seeall(),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 198,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(categories: categories[index]);
                },
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Text(
                  "All restaurants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1130,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.none,
              itemCount: specials.length,
              itemBuilder: (context, index) {
                return specialCard(special: specials[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
