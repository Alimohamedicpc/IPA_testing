import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            "assets/images/gourmet-fast-food-burger-nuggets-striking-red-vertical-mobile-wallpaper_892776-34582.avif",
          ),
          fit: BoxFit.cover),
    ));
  }
}
