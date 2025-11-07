import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    required this.width,
    required this.name,
  });
  final double width;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfffe941a),
        borderRadius: BorderRadius.circular(8),
      ),
      width: width,
      height: 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 13, top: 5),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
