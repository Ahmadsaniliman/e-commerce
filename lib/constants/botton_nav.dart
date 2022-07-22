import 'package:e_commm/Ui/Details/product_details.dart';
import 'package:e_commm/Ui/Home/home_page.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final BottomNavigationAction selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MainScreenView(),
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: selectedMenu == BottomNavigationAction.home
                      ? Colors.white
                      : kSecondaryColor,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: selectedMenu == BottomNavigationAction.home
                        ? Colors.white
                        : kSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.add_chart,
                  color: selectedMenu == BottomNavigationAction.cart
                      ? Colors.white
                      : kSecondaryColor,
                ),
                Text(
                  'Cart',
                  style: TextStyle(
                    color: selectedMenu == BottomNavigationAction.cart
                        ? Colors.white
                        : kSecondaryColor,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.person,
                    color: selectedMenu == BottomNavigationAction.profile
                        ? Colors.white
                        : kSecondaryColor),
                Text(
                  'Profile',
                  style: TextStyle(
                      color: selectedMenu == BottomNavigationAction.profile
                          ? Colors.white
                          : kSecondaryColor),
                ),
              ],
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.shop,
                    color: selectedMenu == BottomNavigationAction.products
                        ? Colors.white
                        : kSecondaryColor),
                Text(
                  'Products',
                  style: TextStyle(
                      color: selectedMenu == BottomNavigationAction.products
                          ? Colors.white
                          : kSecondaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
