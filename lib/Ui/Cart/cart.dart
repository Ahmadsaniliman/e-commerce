import 'package:e_commm/Model/default_cart.dart';
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
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(
        selectedMenu: BottomNavigationAction.cart,
      ),
    );
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String name;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(
        1.toString(),
      ),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: const EdgeInsets.only(
          bottom: 20.0,
        ),
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Row(
          children: const [
            Spacer(),
            Icon(
              Icons.delete,
              size: 40.0,
              color: kSecondaryColor,
            ),
          ],
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 20.0,
        ),
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 100,
              width: 130,
              decoration: const BoxDecoration(color: kSecondaryColor),
              child: Image.asset(
                image,
              ),
            ),
            const SizedBox(width: 20.0),
            Column(
              children: [
                Text(
                  name,
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(price),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
