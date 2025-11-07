import 'package:flutter/material.dart';

class Googlelogin extends StatelessWidget {
  const Googlelogin({super.key, required this.text, required this.imageicon});
  final String text;
  final String imageicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.black)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageicon,
            height: 37,
          ),
          const SizedBox(
            width: 1,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}