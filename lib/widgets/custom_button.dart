import 'package:flutter/material.dart';
import 'package:login_design/constants/colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title, required this.onPressed});
  final String title;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white,
      textColor: kPrimaryColor,
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
