import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 57,
      child: CircleAvatar(
        radius: 55,
        backgroundImage:
            AssetImage("assets/images/photo_5933707803342520766_y.jpg"),
      ),
    );
  }
}
