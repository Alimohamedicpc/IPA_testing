import 'package:flutter/material.dart';

class Seeall extends StatelessWidget {
  const Seeall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xfffed9ce),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 5, left: 15),
        child: Text(
          "See all",
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
