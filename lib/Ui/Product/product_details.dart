import 'package:e_commm/Ui/Product/components/color_dot.dart';
import 'package:e_commm/Ui/Product/components/product_description.dart';
import 'package:e_commm/Ui/Product/components/product_image.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Model/model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImage(product: product),
            ProdDesc(product: product),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10.0,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        ColorDot(),
                        ColorDot(),
                        ColorDot(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '-',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const Text('01'),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '+',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
