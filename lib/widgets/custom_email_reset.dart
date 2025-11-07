import 'package:flutter/material.dart';

class CustomEmailReset extends StatelessWidget {
  const CustomEmailReset({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xfff83b01)),
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18, horizontal: 21),
            hintText: text,
            hintStyle: const TextStyle(color: Colors.grey)),
      ),
    );
  }
}
