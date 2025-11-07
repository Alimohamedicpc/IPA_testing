import 'package:flutter/material.dart';

class CustomPasswordfield extends StatefulWidget {
  const CustomPasswordfield({super.key, required this.text});
  final String text;

  @override
  State<CustomPasswordfield> createState() => _CustomPasswordfieldState();
}

class _CustomPasswordfieldState extends State<CustomPasswordfield> {
  bool isobscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        obscureText: isobscure,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isobscure = !isobscure;
                  });
                },
                icon: Icon(
                  isobscure ? Icons.visibility_off : Icons.visibility,
                )),
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
            hintText: widget.text,
            hintStyle: const TextStyle(color: Colors.grey)),
      ),
    );
  }
}
