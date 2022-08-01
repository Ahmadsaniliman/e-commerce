import 'package:e_commm/Ui/Home/components/popular_card.dart';
import 'package:e_commm/Ui/Product/product_details.dart';
import 'package:flutter/material.dart';

class PopularCartegory extends StatelessWidget {
  // final Product product;

  const PopularCartegory({
    Key? key,
    // required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Most Popular Products',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProductDetails(),
                    ),
                  );
                },
                child: const PopularCard(
                  images: 'assests/images/wireless headset.png',
                  name: 'headset',
                ),
              ),
              const SizedBox(width: 25.0),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProductDetails(),
                    ),
                  );
                },
                child: const PopularCard(
                  images: 'assests/images/ps4_console_blue_1.png',
                  name: 'ps4 controller',
                ),
              ),
              const SizedBox(width: 25.0),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProductDetails(),
                    ),
                  );
                },
                child: const PopularCard(
                  images: 'assests/images/Image Popular Product 2.png',
                  name: 'Trouser',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
