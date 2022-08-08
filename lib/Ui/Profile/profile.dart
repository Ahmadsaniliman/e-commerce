import 'package:e_commm/Auth/auth_services.dart';
import 'package:e_commm/Backend/backend.dart';
import 'package:e_commm/Ui/Profile/components/profile_image.dart';
import 'package:e_commm/Util/default_button.dart';
import 'package:e_commm/Util/text_form_field.dart';
import 'package:e_commm/constants/botton_nav.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtool show log;

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late final TextEditingController _firstNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _nickNameController;
  late final Backend _backend;
  String get userId => AuthServices.fromFirebase().currentUser!.id;

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _emailController = TextEditingController();
    _lastNameController = TextEditingController();
    _nickNameController = TextEditingController();
    _backend = Backend();
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _nickNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 15.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              const ProfileImage(),
              const SizedBox(height: 30.0),
              FormTextField(
                label: 'First Name',
                obscureText: false,
                hintText: 'Enter Your First Name',
                controller: _firstNameController,
                iconData: const Icon(Icons.people),
              ),
              const SizedBox(height: 25.0),
              FormTextField(
                label: 'Last Name',
                obscureText: false,
                hintText: 'Enter Your Last Name',
                controller: _lastNameController,
                iconData: const Icon(Icons.people),
              ),
              const SizedBox(height: 25.0),
              FormTextField(
                label: 'Email',
                obscureText: false,
                hintText: 'Enter Your Email',
                controller: _emailController,
                iconData: const Icon(Icons.mark_email_unread_sharp),
              ),
              const SizedBox(height: 25.0),
              DefaultButton(
                text: 'Submit',
                onPressed: () async {
                  final email = _emailController.text;
                  final firstName = _firstNameController.text;
                  final lastName = _lastNameController.text;
                  devtool.log(email);
                  devtool.log(firstName);
                  devtool.log(lastName);
                  await _backend.createProfile(
                    email: email,
                    firstName: firstName,
                    lastName: lastName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(
        selectedMenu: BottomNavigationAction.profile,
      ),
    );
  }
}
