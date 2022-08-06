import 'package:e_commm/Model/default_cart.dart';
import 'package:e_commm/Ui/Cart/components/product_cart.dart';
import 'package:e_commm/constants/botton_nav.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 15.0,
        ),
        child: ListView.builder(
          itemCount: defaultcart.length,
          itemBuilder: (context, index) => ProductCart(
            image: defaultcart[index].images,
            name: defaultcart[index].title,
            price: defaultcart[index].price.toString(),
            index: index,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(
        selectedMenu: BottomNavigationAction.cart,
      ),
    );
  }
}
