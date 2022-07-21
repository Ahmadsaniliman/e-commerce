import 'package:e_commm/Ui/Home/popular_card.dart';
import 'package:flutter/material.dart';

class PopularCartegory extends StatelessWidget {
  const PopularCartegory({
    Key? key,
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
            children: const [
              PopularCard(
                images: 'assests/images/wireless headset.png',
                name: 'headset',
              ),
              SizedBox(width: 25.0),
              PopularCard(
                images: 'assests/images/ps4_console_blue_1.png',
                name: 'ps4 controller',
              ),
              SizedBox(width: 25.0),
              PopularCard(
                images: 'assests/images/Image Popular Product 2.png',
                name: 'Trouser',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
