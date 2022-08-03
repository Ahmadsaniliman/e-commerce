import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      padding: const EdgeInsets.all(5.0),
      height: 30.0,
      width: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(),
      ),
      child: Container(
        height: 25.0,
        width: 25.0,
        decoration:
            const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
      ),
    );
  }
}
