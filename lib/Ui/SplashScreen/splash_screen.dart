import 'package:e_commm/Ui/SplashScreen/components/down_part.dart';
import 'package:e_commm/Ui/SplashScreen/components/splash_screen_data.dart';
import 'package:e_commm/Ui/SplashScreen/components/upper_part.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentOne = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      _currentOne = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => UpperPart(
                    index: index,
                  ),
                ),
              ),
              DownPart(currentOne: _currentOne),
            ],
          ),
        ),
      ),
    );
  }
}
