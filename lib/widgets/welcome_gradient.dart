import 'package:flutter/material.dart';

class WelcomeGradient extends StatelessWidget {
  const WelcomeGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color(0xfff83b01),
          Colors.transparent.withOpacity(0.5),
          Colors.white,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
    ));
  }
}
