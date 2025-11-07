import 'package:fastfood/widgets/custom_button.dart';
import 'package:fastfood/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Search_bar(),
            Padding(
              padding: EdgeInsets.only(left: 62, top: 15),
              child: Row(
                children: [
                  customButton(name: "burger", width: 70),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 90, name: "vegetarian"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 70, name: "healthy"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 40),
              child: Row(
                children: [
                  customButton(width: 60, name: "wrap"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 85, name: "fast food"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 58, name: "salad"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 63, name: "snack"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 62),
              child: Row(
                children: [
                  customButton(width: 89, name: "sandwich"),
                  Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: customButton(width: 60, name: "sushi"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 80, name: "desserts"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 55),
              child: Row(
                children: [
                  customButton(width: 50, name: "thai"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 60, name: "lunch"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: customButton(width: 60, name: "pizza"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: customButton(width: 66, name: "kebab"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 62),
              child: Row(
                children: [
                  customButton(width: 86, name: "breakfast"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: customButton(width: 63, name: "wings"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: customButton(width: 83, name: "desserts"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
