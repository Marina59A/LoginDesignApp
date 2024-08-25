import 'package:flutter/material.dart';
import 'package:login_design/constants/colors.dart';
import 'package:login_design/views/register_view.dart';
import 'package:login_design/widgets/custom_button.dart';
import 'package:login_design/widgets/custom_logo.dart';
import 'package:login_design/widgets/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
            const Text(
              "Sign In",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFeild(hintText: 'Email'),
            const SizedBox(
              height: 12,
            ),
            const CustomTextFeild(hintText: 'Password'),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password ? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(title: 'Sign In', onPressed: () {}),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "-------------------------------Or WithIn-------------------------------",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/facebook.png",
                          height: 25,
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/Google.png",
                          height: 25,
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/apple.png",
                          height: 25,
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(RegisterView.id);
              },
              child: const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "You don't have an account ?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: " Register",
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
