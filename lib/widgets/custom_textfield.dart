import 'package:flutter/material.dart';
import 'package:login_design/constants/colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    required this.hintText,
    this.icon,
  });
  final String hintText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        filled: true,
        fillColor: kPrimaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        suffix: icon,
      ),
    );
  }
}
