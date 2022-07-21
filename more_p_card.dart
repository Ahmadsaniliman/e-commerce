import 'package:flutter/material.dart';

class MoreProductCard extends StatelessWidget {
  const MoreProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 150,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Image.asset('assests/images/bag_1.png'),
          ),
          const Text(
            'Name',
            maxLines: 2,
          ),
          const Text('Price'),
          const Icon(Icons.add_chart),
        ],
      ),
    );
  }
}
