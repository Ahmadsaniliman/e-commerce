import 'package:e_commm/Util/default_button.dart';
import 'package:e_commm/Util/error_dialog.dart';
import 'package:e_commm/Util/text_form_field.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:e_commm/constants/routes.dart';
import 'package:e_commm/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtool show log;
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 30.0,
            ),
            child: FutureBuilder(
              future: Firebase.initializeApp(
                options: DefaultFirebaseOptions.currentPlatform,
              ),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    return Column(
                      children: [
                        SvgPicture.asset(
                          'assests/icons/login.svg',
                          height: 240,
                        ),
                        const SizedBox(height: 35.0),
                        FormTextField(
                          keyBoardType: TextInputType.emailAddress,
                          obscureText: false,
                          label: 'Email',
                          hintText: 'Enter Your Email',
                          controller: _emailController,
                          iconData: const Icon(Icons.email),
                        ),
                        const SizedBox(height: 25.0),
                        FormTextField(
                          obscureText: true,
                          iconData: const Icon(Icons.lock),
                          label: 'Password',
                          hintText: 'Enter Your password',
                          controller: _passwordController,
                        ),
                        const SizedBox(height: 25.0),
                        DefaultButton(
                          text: 'Login',
                          onPressed: () async {
                            final email = _emailController.text;
                            final password = _passwordController.text;
                            try {
                              final user = await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                email: email,
                                password: password,
                              );
                              devtool.log(user.toString());
                              final currUser =
                                  FirebaseAuth.instance.currentUser;
                              if (currUser!.emailVerified) {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  mainScreenRoute,
                                  (route) => false,
                                );
                              } else {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  verifyEmailRoute,
                                  (route) => false,
                                );
                              }
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                mainScreenRoute,
                                (route) => false,
                              );
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'Wrong-Password') {
                                await showErrorDialog(
                                  context: context,
                                  contentText: 'Wrong Passsword Used',
                                );
                              } else if (e.code == 'User-Not-Exists') {
                                await showErrorDialog(
                                  context: context,
                                  contentText: 'User Doess Not Exists',
                                );
                              } else {
                                devtool.log(e.toString());
                              }
                            } catch (_) {
                              devtool.log(_.toString());
                            }
                          },
                        ),
                        // const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Don"t have an account!'),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  registerRoute,
                                );
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.black54,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              forgotPasswordRoute,
                              (route) => false,
                            );
                          },
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.black87,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    );
                  default:
                    return const CircularProgressIndicator();
                }
              },
            )),
      ),
    );
  }
}
