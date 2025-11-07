import 'package:flutter/material.dart';

class DividerWelcome extends StatelessWidget {
  const DividerWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: const Divider(
              indent: 20,
              endIndent: 30,
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
              indent: 20,
              endIndent: 30,
              thickness: 1,
              color: Color(0xff4f4954),
            ),
          ),
        ),
      ],
    );
  }
}
