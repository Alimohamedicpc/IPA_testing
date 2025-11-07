import 'package:fastfood/widgets/Profile_Avatar.dart';
import 'package:fastfood/widgets/custon_item.dart';
import 'package:fastfood/widgets/logout_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              ProfileAvatar(),
              SizedBox(height: 15),
              Text(
                "Ali Mohamed",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "FlutterDeveloper@gmail.com",
                style: TextStyle(fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 45),
                child: Column(
                  children: [
                    CustomItem(icon: Icons.person, name: "My Profile"),
                    SizedBox(height: 25),
                    CustomItem(icon: Icons.list_alt, name: "My Orders"),
                    SizedBox(height: 25),
                    CustomItem(
                      icon: Icons.location_on,
                      name: "Delivery Address",
                    ),
                    SizedBox(height: 25),
                    CustomItem(
                      icon: Icons.credit_card,
                      name: "Payments Methods",
                    ),
                    SizedBox(height: 25),
                    CustomItem(icon: Icons.mail, name: "Contact Us"),
                    SizedBox(height: 25),
                    CustomItem(icon: Icons.settings, name: "Settings"),
                    SizedBox(height: 25),
                    CustomItem(icon: Icons.help_outline, name: "Help & FAQ"),
                    SizedBox(height: 80),
                    LogoutButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
