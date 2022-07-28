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
        child: Column(
          children: [
            Container(
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
                      'assests/images/tshirt.png',
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    children: const [
                      Text(
                        'Wireless HeadSet',
                        maxLines: 2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          // fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('\$ 40.0'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(
        selectedMenu: BottomNavigationAction.cart,
      ),
    );
  }
}
