import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 40,
      backgroundColor: Colors.transparent,
      child: Material(
        shape: CircleBorder(),
        elevation: 6,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/LVpU0Dh9_400x400.jpg"),
          radius: 40,
        ),
      ),
    );
  }
}
