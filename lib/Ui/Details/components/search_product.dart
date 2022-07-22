import 'package:flutter/material.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 15.0,
          ),
          border: InputBorder.none,
          hintText: 'Search For Product',
        ),
      ),
    );
  }
}
