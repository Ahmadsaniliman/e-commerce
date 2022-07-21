import 'package:e_commm/Ui/Home/components/category_card.dart';
import 'package:e_commm/Ui/Home/components/p_category_card.dart';
import 'package:e_commm/Ui/Home/components/pop_up_button.dart';
import 'package:e_commm/Ui/Home/name_card.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:flutter/material.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  Widget build(BuildContext context) {
    List categories = [
      'Games',
      'Women',
      'Comedy',
      'Sport',
      'Men',
      'Grocery',
      'Education'
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text('Home Page'),
        actions: const [
          PopUpButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            const NameCard(),
            CategoryCard(categories: categories),
            const PopularCartegory(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'More Products',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
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
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        height: 65,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home),
                Text('Home'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.add_chart),
                Text('Cart'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.person),
                Text('Profile'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.shop),
                Text('Products'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MoreProductCard extends StatelessWidget {
  final String assests;
  final String name;
  final String price;
  const MoreProductCard({
    Key? key,
    required this.assests,
    required this.name,
    required this.price,
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
            child: Image.asset(assests),
          ),
          Text(
            name,
            maxLines: 2,
          ),
          Text(price),
          //   const Icon(Icons.add_chart),
        ],
      ),
    );
  }
}
