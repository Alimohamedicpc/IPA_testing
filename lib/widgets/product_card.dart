import 'package:fastfood/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final productModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          color: Colors.white,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  product.image,
                  height: 150,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 160),
                    child: Row(
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 9),
                    child: Row(children: [Text(product.description)]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.delivery_dining,
                          color: Color(0xfffe941a),
                        ),
                        Text(product.price),
                        const SizedBox(width: 10),
                        const Icon(Icons.timer, color: Color(0xfffe941a)),
                        Text(product.time),
                        const Icon(
                          Icons.star_purple500_outlined,
                          color: Color(0xfffe941a),
                        ),
                        Text(product.review),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
