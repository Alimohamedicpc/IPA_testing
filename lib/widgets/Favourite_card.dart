import 'package:fastfood/models/favourite_model.dart';
import 'package:flutter/material.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key, required this.favourite});
  final favourite_model favourite;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        children: [
          Row(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.white,
                elevation: 4,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          child: Image.asset(
                            favourite.image,
                            width: 350,
                            height: 180,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 189),
                                  child: Text(
                                    favourite.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 175),
                                  child: Text(
                                    favourite.description,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 112),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.delivery_dining,
                                    color: Color(0xfffe941a),
                                  ),
                                  const SizedBox(width: 3),
                                  Text(favourite.price),
                                  const SizedBox(width: 10),
                                  const Icon(
                                    Icons.timer,
                                    color: Color(0xfffe941a),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(favourite.time),
                                  const SizedBox(width: 10),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xfffe941a),
                                  ),
                                  const SizedBox(width: 1),
                                  Text(favourite.rate),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                      ],
                    ),
                    const Positioned(
                      top: 9,
                      right: 10,
                      child: CircleAvatar(
                        backgroundColor: Color(0xfff83b01),
                        radius: 15,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
