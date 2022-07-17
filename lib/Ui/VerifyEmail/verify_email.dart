import 'package:flutter/material.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            const Text(
                'we have sent you a verification email plsease check your mail to verify your account.'),
            const SizedBox(height: 20.0),
            const Text('Have not recieved a mail press the button below'),
            TextButton(
              onPressed: () async {},
              child: const Text('send verification mail'),
            ),
          ],
        ),
      ),
    );
  }
}
