import 'package:e_commm/Ui/SplashScreen/components/page_roller.dart';
import 'package:e_commm/Ui/SplashScreen/components/splash_screen_data.dart';
import 'package:e_commm/Util/default_button.dart';
import 'package:e_commm/constants/routes.dart';
import 'package:flutter/material.dart';

class DownPart extends StatelessWidget {
  const DownPart({
    Key? key,
    required int currentOne,
  })  : _currentOne = currentOne,
        super(key: key);

  final int _currentOne;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                splashData.length,
                (index) => PageRollerr(currentOne: _currentOne, index: index),
              ),
            ],
          ),
          const Spacer(),
          DefaultButton(
            text: 'Continue',
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                registerRoute,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
