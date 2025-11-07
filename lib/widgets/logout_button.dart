import 'package:fastfood/constant.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: kprimarycolor),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(Icons.logout, color: kprimarycolor),
                SizedBox(width: 5),
                Text(
                  "Log out",
                  style: TextStyle(color: kprimarycolor, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
