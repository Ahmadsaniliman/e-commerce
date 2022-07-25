import 'package:e_commm/Ui/Product/product_details.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final String images;
  final String name;
  const PopularCard({
    Key? key,
    required this.images,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProductDetails(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 15.0,
          bottom: 15.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: 150,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(),
          // color: Colors.green,
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: Column(
            children: [
              Image.asset(
                images,
                width: 100,
              ),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
