import 'package:e_commm/Util/text_form_field.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 30.0,
          ),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              SvgPicture.asset(
                'assests/icons/signup.svg',
                height: 250,
              ),
              const SizedBox(height: 90.0),
              FormTextField(
                label: 'Forgot password',
                obscureText: false,
                hintText: 'Enter Your Email',
                controller: _emailController,
                iconData: const Icon(Icons.mail),
              ),
              const SizedBox(height: 10.0),
              InkWell(
                onTap: () async {
                  final email = _emailController.text;
                  await FirebaseAuth.instance.sendPasswordResetEmail(
                    email: email,
                  );
                },
                child: const Text(
                  'Reset Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
