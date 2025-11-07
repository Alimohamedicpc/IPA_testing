import 'package:flutter/material.dart';

class DividerSignin extends StatelessWidget {
  const DividerSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            child: const Divider(
              indent: 60,
              endIndent: 10,
              thickness: 1,
              color: Color(0xff4f4954),
            ),
          ),
        ),
        const Text(
          "Sign in with",
          style: TextStyle(color: Color(0xff4f4954)),
        ),
        Expanded(
          child: Container(
            child: const Divider(
              indent: 10,
              endIndent: 55,
              thickness: 1,
              color: Color(0xff4f4954),
            ),
          ),
        ),
      ],
    );
  }
}