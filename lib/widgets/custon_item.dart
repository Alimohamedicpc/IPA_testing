import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.icon,
    required this.name,
  });
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0xfffe941a),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
