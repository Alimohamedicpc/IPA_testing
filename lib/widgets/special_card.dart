import 'package:fastfood/models/special_model.dart';
import 'package:flutter/material.dart';

class specialCard extends StatelessWidget {
  const specialCard({super.key, required this.special});
  final special_model special;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
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
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.asset(
                        special.image,
                        width: 350,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 228),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 21),
                                child: Text(
                                  special.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Row(
                            children: [
                              Text(
                                special.description,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 95),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.delivery_dining,
                                color: Color(0xfffe941a),
                              ),
                              Text(special.price),
                              const SizedBox(width: 10),
                              const Icon(Icons.timer, color: Color(0xfffe941a)),
                              Text(special.time),
                              const SizedBox(width: 10),
                              const Icon(Icons.star, color: Color(0xfffe941a)),
                              Text(special.rate),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
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
