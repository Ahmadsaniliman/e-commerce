import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commm/Backend/user_details.dart';

class Person {
  final String userId;
  final String firstName;
  final String email;
  final String lastName;
//   final List<Product> cart;

  Person({
    required this.userId,
    required this.firstName,
    required this.email,
    required this.lastName,
  });

  Person.fromSnapshot(
    QueryDocumentSnapshot<Map<String, dynamic>> snapshot,
  )   : userId = snapshot.id,
        firstName = snapshot.data()[userFirstNameField] as String,
        lastName = snapshot.data()[userLastNameField] as String,
        email = snapshot.data()[userEmailField] as String;
  // cart = snapshot.data()[userCart];
}
