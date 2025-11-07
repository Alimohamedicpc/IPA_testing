import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search_bar extends StatelessWidget {
  const Search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffededef),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
