import 'package:e_commm/Ui/Product/components/increment.dart';
import 'package:e_commm/Ui/Product/components/product_description.dart';
import 'package:e_commm/Ui/Product/components/product_image.dart';
import 'package:e_commm/Util/default_button.dart';
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
            const IncrementCounter(),
            DefaultButton(
              text: 'Add To Cart',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
