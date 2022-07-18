import 'package:e_commm/Ui/Home/components/pop_up_button.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:flutter/material.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text('Home Page'),
        actions: const [
          PopUpButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: kPrimaryColor,
              ),
              child: Column(children : const [],),
            ),
          ],
        ),
      ),
    );
  }
}
