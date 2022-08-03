import 'package:e_commm/Model/model.dart';
import 'package:e_commm/Ui/Product/product_details.dart';
import 'package:flutter/material.dart';

class MoreProductCard extends StatelessWidget {
  final String assests;
  final String name;
  final String price;
  final Product product;

  const MoreProductCard({
    Key? key,
    required this.assests,
    required this.name,
    required this.price,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                product: product,
              ),
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
      ),
    );
  }
}
