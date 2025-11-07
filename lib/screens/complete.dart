import 'package:fastfood/constant.dart';
import 'package:fastfood/screens/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompleteReset extends StatelessWidget {
  const CompleteReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 85),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Password Reset Done",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    "Your Password is Done you can Go",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const HomeView();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    " Shopping",
                    style: TextStyle(
                      fontSize: 15,
                      color: kprimarycolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
