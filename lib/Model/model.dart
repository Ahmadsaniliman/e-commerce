class Product {
  final String title, description;
  final String images;
  final double rating, price;
//   final bool isPupular, isFavourite;

  Product({
    this.rating = 0.0,
    required this.price,
    required this.title,
    required this.description,
    required this.images,
    // this.isPupular = false,
    // this.isFavourite = false,
  });
}

List<Product> products = [
  Product(
    price: 40.0,
    title: 'Bag',
    description: 'Womens Lovely And Adorable bag',
    images: 'assests/images/bag_1.png',
  ),
  Product(
    price: 60.0,
    title: 'Bag',
    description: 'Womens Lovely And Adorable bag',
    images: 'assets/images/bag_5.png',
  ),
  Product(
    price: 90,
    title: 'Shoe',
    description: 'Nike Shoe',
    images: 'assets/images/shoes2.png',
  ),
  Product(
    price: 45,
    title: 'R-Shoe',
    description: 'A Beautiful mens shoe',
    images: 'assets/images/shoe_2.jpg',
  ),
  Product(
    price: 90.99,
    title: 'B Shoe',
    description: 'A Beautiful mens shoe',
    images: 'assets/images/blach_shoe.jpg',
  ),
  Product(
    price: 80.99,
    title: 'T-SHirt',
    description: 'Mens T-Shirt',
    images: 'assets/images/product 1 image.png',
  ),
  Product(
    price: 80.99,
    title: 'HeadPhone',
    description: 'Unbreakable HeadPhone',
    images: 'assets/images/wireless_headset.png',
  ),
  Product(
    price: 80.99,
    title: 'psp Controller',
    description: 'Ps4 wireless controller',
    images: 'assets/images/psp.jpg',
  ),
  Product(
    price: 60.99,
    title: 'W-Shoe',
    description: 'A Beautiful mens shoe',
    images: 'assets/images/shoe_4.jpg',
  ),
  Product(
    price: 40.99,
    title: 'N-Shoe',
    description: 'A Beautiful mens shoe',
    images: 'assets/images/shoe_5.jpg',
  ),
  Product(
    price: 40.99,
    title: 'ps4 controller',
    description: 'Ps4 wireless controller',
    images: 'assets/images/ps4_console_white_1.png',
  ),
  Product(
    price: 30.99,
    title: 'R-T-Shirt',
    description: 'Mens T-Shirt',
    images: 'assets/images/tshirt.png',
  ),
  Product(
    price: 16.99,
    title: 'Trouser',
    description: 'Mens Trouser',
    images: 'assets/images/Image Popular Product 2.png',
  ),
  Product(
    price: 16.99,
    title: 'Glove',
    description: 'GoalKeeper Glove',
    images: 'assets/images/glap.png',
  ),
];
