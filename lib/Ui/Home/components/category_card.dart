import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
       ),
      height: 40.0,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            categories[index],
          ),
        ),
      ),
    );
  }
}
