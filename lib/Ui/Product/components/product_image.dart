import 'package:flutter/material.dart';

import '../../../Model/model.dart';
import '../../../constants/constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kSecondaryColor,
          child: Image.asset(product.images),
          height: 300,
          width: double.infinity,
        ),
        Positioned(
          top: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
