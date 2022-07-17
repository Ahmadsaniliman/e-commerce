import 'package:e_commm/Ui/ForgotPassword/forgot_password.dart';
import 'package:e_commm/Ui/Home/home_page.dart';
import 'package:e_commm/Ui/Login/login.dart';
import 'package:e_commm/Ui/Register/register.dart';
import 'package:e_commm/Ui/SplashScreen/splash_screen.dart';
import 'package:e_commm/Ui/VerifyEmail/verify_email.dart';
import 'package:e_commm/constants/routes.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      theme: ThemeData(),
      home: const SplashScreen(),
      routes: {
        registerRoute: (context) => const RegisterView(),
        loginRoute: (context) => const LoginView(),
        forgotPasswordRoute: (context) => const ForgotPasswordView(),
        mainScreenRoute: (context) => const MainScreenView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
      },
    );
  }
}
