import 'package:e_commm/Ui/SplashScreen/components/splash_screen_data.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:flutter/material.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text(
          'Nigeria',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(splashData[index]['text']!),
        const Spacer(),
        Image.asset(
          splashData[index]['image']!,
          height: 300,
          width: 250,
        ),
      ],
    );
  }
}
