class Product {
  final String title, description;
  final String images;
  final double rating, price;
  final int id;

  Product({
    this.rating = 0.0,
    required this.price,
    required this.title,
    required this.description,
    required this.images,
    required this.id,
    // this.isPupular = false,
    // this.isFavourite = false,
  });
}

List<Product> demoProducts = [
  Product(
    id: 0,
    price: 40.0,
    title: 'Bag',
    description: 'Womens Lovely And Adorable bag',
    images: 'assests/images/bag_1.png',
  ),
  Product(
    id: 1,
    price: 60.0,
    title: 'Bag',
    description: 'Womens Lovely And Adorable bag',
    images: 'assests/images/bag_5.png',
  ),
  Product(
    id: 2,
    price: 90,
    title: 'Shoe',
    description: 'Nike Shoe',
    images: 'assests/images/shoes2.png',
  ),
  Product(
    id: 3,
    price: 45,
    title: 'R-Shoe',
    description: 'A Beautiful mens shoe',
    images: 'assests/images/shoes2.png',
  ),
  Product(
    id: 4,
    price: 90.99,
    title: 'B T-shirt',
    description: 'A Beautiful mens shoe',
    images: 'assests/images/product 1 image.png',
  ),
  Product(
    id: 5,
    price: 80.99,
    title: 'T-SHirt',
    description: 'Mens T-Shirt',
    images: 'assests/images/product 1 image.png',
  ),
  Product(
    id: 6,
    price: 80.99,
    title: 'Bag',
    description: 'Unbreakable HeadPhone',
    images: 'assests/images/bag_1.png',
  ),
  Product(
    id: 7,
    price: 80.99,
    title: 'psp Controller',
    description: 'Ps4 wireless controller',
    images: 'assests/images/ps4_console_white_1.png',
  ),
  Product(
    id: 8,
    price: 60.99,
    title: 'W-Shoe',
    description: 'A Beautiful mens shoe',
    images: 'assests/images/shoes2.png',
  ),
  Product(
    id: 9,
    price: 40.99,
    title: 'N-Shoe',
    description: 'A Beautiful mens shoe',
    images: 'assests/images/shoes2.png',
  ),
  Product(
    id: 10,
    price: 40.99,
    title: 'ps4 controller',
    description: 'Ps4 wireless controller',
    images: 'assests/images/ps4_console_white_1.png',
  ),
  Product(
    id: 11,
    price: 30.99,
    title: 'R-T-Shirt',
    description: 'Mens T-Shirt',
    images: 'assests/images/tshirt.png',
  ),
  Product(
    id: 12,
    price: 16.99,
    title: 'Trouser',
    description: 'Mens Trouser',
    images: 'assests/images/Image Popular Product 2.png',
  ),
  Product(
    id: 13,
    price: 16.99,
    title: 'Glove',
    description: 'GoalKeeper Glove',
    images: 'assests/images/glap.png',
  ),
];
