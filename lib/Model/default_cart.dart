import 'package:e_commm/Model/model.dart';

class DefaultCart {
  final String title, description;
  final String images;
  final double rating, price;

  DefaultCart({
    this.rating = 0.0,
    required this.price,
    required this.title,
    required this.description,
    required this.images,
  });
}

List<Product> defaultcart = [
  Product(
    price: 80.99,
    title: 'psp Controller',
    description: 'Ps4 wireless controller',
    images: 'assests/images/ps4_console_white_1.png',
  ),
  Product(
    price: 80.99,
    title: 'Bag',
    description: 'Unbreakable HeadPhone',
    images: 'assests/images/bag_1.png',
  ),
  Product(
    price: 16.99,
    title: 'Trouser',
    description: 'Mens Trouser',
    images: 'assests/images/Image Popular Product 2.png',
  ),
];
