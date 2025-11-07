import 'package:fastfood/constant.dart';
import 'package:fastfood/screens/Reset_password.dart';
import 'package:fastfood/screens/Signin_page.dart';
import 'package:fastfood/widgets/custom_passwordfield.dart';
import 'package:fastfood/widgets/custom_textfield.dart';
import 'package:fastfood/widgets/divider_signin.dart';
import 'package:fastfood/widgets/facebook_login.dart';
import 'package:fastfood/widgets/google_login.dart';
import 'package:fastfood/widgets/start_with_email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Name", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              const CustomtextField(text: "Your Name"),
              const SizedBox(height: 17),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Email", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              const CustomtextField(text: "Your email"),
              const SizedBox(height: 17),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Password", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              const CustomPasswordfield(text: "Password"),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const ResetPassword();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: kprimarycolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
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
                  child: const uniqueButton(
                    text: "Sign Up",
                    color: kprimarycolor,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: GestureDetector(
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
                        "Login",
                        style: TextStyle(
                          color: kprimarycolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const DividerSignin(),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: FacebookLogin(
                  text: "Continue with Facebook",
                  icon: Icons.facebook,
                  iconcolor: Colors.blue,
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Googlelogin(
                  text: "Continue with Google",
                  imageicon: "assets/images/Google_Icons-09-512.webp",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
