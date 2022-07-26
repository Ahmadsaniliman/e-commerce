import 'package:e_commm/Ui/Details/components/product_card.dart';
import 'package:e_commm/Ui/Details/components/search_product.dart';
import 'package:e_commm/constants/botton_nav.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Product product;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 15.0,
        ),
        child: SafeArea(
          child: Column(
            children: const [
              SearchProduct(),
              SizedBox(height: 10.0),
              ProductCardGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(
        selectedMenu: BottomNavigationAction.products,
      ),
    );
  }
}
