import 'package:fastfood/constant.dart';
import 'package:fastfood/screens/verification_code.dart';
import 'package:fastfood/widgets/custom_email_reset.dart';
import 'package:fastfood/widgets/start_with_email.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text(
                    "Please enter your email address to request a\npassword reset",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Row(
                children: [Text("Email", style: TextStyle(fontSize: 18))],
              ),
            ),
            const SizedBox(height: 10),
            const CustomEmailReset(text: "Your email"),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const VerificationCode();
                      },
                    ),
                  );
                },
                child: const uniqueButton(
                  text: "Sign Up",
                  color: kprimarycolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
