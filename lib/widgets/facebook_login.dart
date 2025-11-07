import 'package:flutter/material.dart';

class FacebookLogin extends StatelessWidget {
  const FacebookLogin(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconcolor});
  final String text;
  final IconData icon;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: Colors.black,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconcolor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
