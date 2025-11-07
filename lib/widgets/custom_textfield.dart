import 'package:flutter/material.dart';

class CustomtextField extends StatelessWidget {
  const CustomtextField({
    super.key,
    required this.text,
    this.icon,
  });
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
