import 'package:e_commm/Model/default_cart.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
    required this.index,
  }) : super(key: key);

  final String name;
  final String price;
  final String image;
  final int index;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(
        defaultcart[widget.index].id.toString(),
      ),
      onDismissed: (index) {
        setState(() {
          defaultcart.removeAt(widget.index);
        });
      },
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
                widget.image,
              ),
            ),
            const SizedBox(width: 20.0),
            Column(
              children: [
                Text(
                  widget.name,
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(widget.price),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
