import 'package:e_commm/Model/model.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../Product/product_details.dart';

class ProductCardGrid extends StatelessWidget {
  const ProductCardGrid({
    Key? key,
    // required this.product,
  }) : super(key: key);

  // final Product product;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: demoProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.75,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  product: demoProducts[index],
                ),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    demoProducts[index].images,
                    width: 100,
                  ),
                ),
                Text(demoProducts[index].title),
                Text('\$ ${demoProducts[index].price.toString()}'),
                const SizedBox(height: 5.0),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 40.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: kPrimaryColor,
                  ),
                  child: const Text(
                    'Add To Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
