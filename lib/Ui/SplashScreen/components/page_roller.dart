import 'package:e_commm/constants/constants.dart';
import 'package:flutter/material.dart';

class PageRollerr extends StatelessWidget {
  const PageRollerr({
    Key? key,
    required int currentOne,
    required this.index,
  })  : _currentOne = currentOne,
        super(key: key);

  final int _currentOne;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _currentOne == index ? 10 : 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: _currentOne == index ? kPrimaryColor : const Color(0xFFD8D8D8),
      ),
    );
  }
}
