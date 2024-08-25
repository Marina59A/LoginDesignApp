import 'package:flutter/material.dart';
import 'package:login_design/views/login_view.dart';
import 'package:login_design/views/register_view.dart';

void main() {
  runApp(const MentorAcademyApp());
}

class MentorAcademyApp extends StatelessWidget {
  const MentorAcademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Design',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff284461)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginView.id: (context) => const LoginView(),
        RegisterView.id: (context) => const RegisterView(),
      },
      initialRoute: LoginView.id,
    );
  }
}
