import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commm/Backend/user_details.dart';
import 'package:e_commm/Model/model.dart';

class UserCart {
  late final List<Product> userProduct;

  UserCart({
    required this.userProduct,
  });

  UserCart.fromSnapshot(
    QueryDocumentSnapshot<Map<dynamic, dynamic>> snapshot,
  ) : userProduct = snapshot.data()[userCart];
}
