import 'package:e_commm/Ui/Product/product_details.dart';
import 'package:flutter/material.dart';

class MoreProductCard extends StatelessWidget {
  final String assests;
  final String name;
  final String price;

  const MoreProductCard({
    Key? key,
    required this.assests,
    required this.name,
    required this.price,
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
        padding: const EdgeInsets.all(10.0),
        width: 150,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Image.asset(assests),
            ),
            Text(
              name,
              maxLines: 2,
            ),
            Text(price),
            //   const Icon(Icons.add_chart),
          ],
        ),
      ),
    );
  }
}
