import 'package:e_commm/Ui/Home/components/category_card.dart';
import 'package:e_commm/Ui/Home/components/home_bottom.dart';
import 'package:e_commm/Ui/Home/components/name_card.dart';
import 'package:e_commm/Ui/Home/components/p_category_card.dart';
import 'package:e_commm/Ui/Home/components/pop_up_button.dart';
import 'package:e_commm/constants/botton_nav.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:flutter/material.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({
    Key? key,
  }) : super(key: key);

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
            const HomePageBottom()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(
        selectedMenu: BottomNavigationAction.home,
      ),
    );
  }
}
