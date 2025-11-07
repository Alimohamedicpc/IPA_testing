import 'package:fastfood/screens/splach_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Food_app());
}

class Food_app extends StatelessWidget {
  const Food_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachView(),
    );
  }
}
