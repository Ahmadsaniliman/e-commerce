import 'package:e_commm/Ui/Details/product_page_details.dart';
import 'package:e_commm/Ui/Home/components/m_product_card.dart';
import 'package:flutter/material.dart';

class HomePageBottom extends StatelessWidget {
  const HomePageBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'More Products',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProductDetailsPage(),
                  ),
                );
              },
              child: const Text(
                'See More',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              MoreProductCard(
                assests: 'assests/images/bag_1.png',
                name: 'Women"s Bag',
                price: '\$40.0',
              ),
              MoreProductCard(
                assests: 'assests/images/shoes2.png',
                name: 'Shoe',
                price: '\$90.0',
              ),
              MoreProductCard(
                assests: 'assests/images/tshirt.png',
                name: 'Tshirt',
                price: '\$40.0',
              ),
              MoreProductCard(
                assests: 'assests/images/images.png',
                name: 'dont know',
                price: '\$99.9',
              ),
              MoreProductCard(
                assests: 'assests/images/glap.png',
                name: 'Goalkepper glove',
                price: '\$40.0',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
