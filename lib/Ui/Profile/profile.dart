import 'package:e_commm/Ui/Profile/components/profile_image.dart';
import 'package:e_commm/Util/default_button.dart';
import 'package:e_commm/Util/text_form_field.dart';
import 'package:e_commm/constants/botton_nav.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _emailController = TextEditingController();
    _lastNameController = TextEditingController();
    _nickNameController = TextEditingController();
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
                onPressed: () {},
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
