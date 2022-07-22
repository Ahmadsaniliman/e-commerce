import 'package:e_commm/Model/model.dart';
import 'package:e_commm/Ui/Details/components/search_product.dart';
import 'package:e_commm/constants/botton_nav.dart';
import 'package:e_commm/constants/constants.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 15.0,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SearchProduct(),
              const SizedBox(height: 10.0),
              Expanded(
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            products[index].images,
                            width: 100,
                          ),
                        ),
                        const Text('image'),
                        const SizedBox(height: 5.0),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          height: 40.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: kPrimaryColor,
                          ),
                          child: const Text(
                            'Add To Cart',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kSecondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
