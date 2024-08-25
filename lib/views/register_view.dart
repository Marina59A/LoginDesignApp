import 'package:flutter/material.dart';
import 'package:login_design/constants/colors.dart';
import 'package:login_design/views/login_view.dart';
import 'package:login_design/widgets/custom_button.dart';
import 'package:login_design/widgets/custom_logo.dart';
import 'package:login_design/widgets/custom_textfield.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String id = "register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 75,
            ),
            const CustomLogo(),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Mentor Academy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "Pacifico",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextFeild(hintText: "First Name"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextFeild(hintText: "Last Name"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomTextFeild(hintText: "Email"),
            const SizedBox(
              height: 12,
            ),
            const CustomTextFeild(hintText: "Password"),
            const SizedBox(
              height: 12,
            ),
            const CustomTextFeild(hintText: "Confirm Password"),
            const SizedBox(
              height: 20,
            ),
            CustomButton(title: "Register", onPressed: () {}),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(LoginView.id);
              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account ?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: " Sign In",
                        style: TextStyle(
                          color: Color.fromARGB(255, 233, 181, 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
