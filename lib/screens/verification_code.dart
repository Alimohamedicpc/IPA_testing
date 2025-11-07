import 'package:fastfood/constant.dart';
import 'package:fastfood/screens/complete.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
                      "Verification Code",
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 27),
              child: Row(
                children: [
                  Text(
                    "Please enter the verification code that has\nbeen sent to customer@gmail.com",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 55),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                cursorColor: Colors.black,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 60,
                  fieldWidth: 50,
                  inactiveColor: Colors.grey,
                  activeColor: kprimarycolor,
                  selectedColor: kprimarycolor,
                  borderWidth: 1.5,
                ),
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
                onCompleted: (value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CompleteReset(),
                    ),
                  );
                },
                onChanged: (value) {},
              ),
            ),

            const SizedBox(height: 22),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Haven't received a code?",
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    "Resend",
                    style: TextStyle(
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
