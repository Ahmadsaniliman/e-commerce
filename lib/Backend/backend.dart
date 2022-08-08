import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commm/Backend/backend_exception.dart';
import 'package:e_commm/Backend/user.dart';
import 'package:e_commm/Backend/user_cart.dart';
import 'package:e_commm/Backend/user_details.dart';

class Backend {
  // SIngleton.
  Backend._sharedInstance();
  static final shared = Backend._sharedInstance();
  factory Backend() => shared;

  final user = FirebaseFirestore.instance.collection('user');

  Future<Person> createProfile({
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    try {
      await user.add({
        userEmailField: '',
        // ignore: equal_keys_in_map
        userFirstNameField: '',
        // ignore: equal_keys_in_map
        userLastNameField: '',
      });

      return Person(
        firstName: '',
        email: '',
        lastName: '',
        userId: '',
      );
    } catch (e) {
      throw CouldNotCreateProfileException;
    }
  }

  Future<UserCart> addToCart({
    required String ownerId,
  }) async {
    try {
      user.add(
        {
          userCart.toString(): [],
        },
      );

      return UserCart(
        userProduct: [],
      );
    } catch (e) {
      throw CouldNotAddToCartException();
    }
  }

  Future<void> deleteFromCart({
    required String documentId,
  }) async {
    try {
      user.doc(documentId).delete();
    } catch (e) {
      throw CouldNotDeleteFromCartException();
    }
  }

  Stream<Iterable<UserCart>> getAllFromCart({
    required String ownerId,
  }) {
    try {
      return user.snapshots().map(
            (doc) => doc.docs
                .map(
                  (e) => UserCart.fromSnapshot(e),
                )
                // ignore: unrelated_type_equality_checks
                .where((userCart) => userCart.userProduct == ownerId),
          );
    } catch (e) {
      throw CouldNotGetAllFromCartException();
    }
  }

  Future<Iterable<UserCart>> getNote({
    required String ownerId,
  }) async {
    return await user
        .where(
          userCart.toString(),
          isEqualTo: ownerId,
        )
        .get()
        .then(
          (value) => value.docs.map(
            (e) => UserCart(
              userProduct: [],
            ),
          ),
        );
  }
}
