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

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
        title: const Text('Register'),
        elevation: 0,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 30.0,
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assests/icons/signup.svg',
                        height: 240,
                      ),
                      const SizedBox(height: 45.0),
                      FormTextField(
                        label: 'Email',
                        obscureText: false,
                        hintText: 'Enter your email',
                        controller: _emailController,
                        iconData: const Icon(Icons.email),
                        keyBoardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 25.0),
                      FormTextField(
                        iconData: const Icon(Icons.password),
                        label: 'Password',
                        hintText: 'Enter your passsword',
                        controller: _passwordController,
                        obscureText: true,
                      ),
                      const SizedBox(height: 25.0),
                      DefaultButton(
                        text: 'Register',
                        onPressed: () async {
                          final email = _emailController.text;
                          final password = _passwordController.text;

                          try {
                            final user = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: email,
                              password: password,
                            );

                            final curUser = FirebaseAuth.instance.currentUser!;
                            await curUser.sendEmailVerification();

                            Navigator.of(context).pushNamedAndRemoveUntil(
                              loginRoute,
                              (route) => false,
                            );
                            devtool.log(user.toString());
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'email-already-in-use') {
                              await showErrorDialog(
                                context: context,
                                contentText: 'Email Already In Use',
                              );
                            } else if (e.code == 'invalid-email') {
                              await showErrorDialog(
                                context: context,
                                contentText: 'Invalid Email Used',
                              );
                            } else if (e.code == 'weak-password') {
                              await showErrorDialog(
                                context: context,
                                contentText: 'Weak Password Used',
                              );
                            } else {
                              await showErrorDialog(
                                context: context,
                                contentText: 'uknown error occured',
                              );
                            }
                          } catch (e) {
                            devtool.log(e.toString());
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Already have an account ?'),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                loginRoute,
                                (route) => false,
                              );
                            },
                            child: const Text('Login'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );

            default:
              return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
