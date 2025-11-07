import 'package:fastfood/constant.dart';
import 'package:fastfood/screens/Signin_page.dart';
import 'package:fastfood/widgets/divider_welcome.dart';
import 'package:fastfood/widgets/facebook_button.dart';
import 'package:fastfood/widgets/google_button.dart';
import 'package:fastfood/widgets/start_with_email.dart';
import 'package:fastfood/widgets/welcome_gradient.dart';
import 'package:fastfood/widgets/welcome_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const WelcomeImage(),
          const WelcomeGradient(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  const Row(
                    children: [
                      Text(
                        "Welcome to",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "Fast Food",
                        style: TextStyle(
                          color: kprimarycolor,
                          fontSize: 52,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        "Get your favourite meals delivered\nquickly right to your doorstep",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 38),
                  const uniqueButton(
                    text: "Start with email",
                    color: Colors.black,
                  ),
                  const SizedBox(height: 30),
                  const DividerWelcome(),
                  const SizedBox(height: 35),
                  const facebookButton(
                    icon: Icons.facebook,
                    iconcolor: Colors.blue,
                    text: "Continue with Facebook",
                  ),
                  const SizedBox(height: 15),
                  const googleButton(
                    imageicon: "assets/images/Google_Icons-09-512.webp",
                    text: "Continue with Google",
                    iconcolor: Colors.red,
                  ),
                  const SizedBox(height: 33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Color(0xff543641)),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignIn();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
