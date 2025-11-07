import 'package:fastfood/models/popular_model.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key, required this.popular});
  final PopularModel popular;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 8,
              color: Colors.white,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      width: 144,
                      height: 100,
                      fit: BoxFit.cover,
                      popular.image,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 1),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 50,
                                bottom: 20,
                                left: 4,
                              ),
                              child: Text(
                                popular.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
