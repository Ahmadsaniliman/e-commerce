import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commm/Backend/user.dart';
import 'package:e_commm/Backend/user_details.dart';

class Backend {
  // SIngleton.
  Backend._sharedInstance();
  static final shared = Backend._sharedInstance();
  factory Backend() => shared;

  final user = FirebaseFirestore.instance.collection('user');

  Future<Person> createProfile({
    required String userId,
  }) async {
    await user.add({
      userId: userId,
      userEmailField: '',
      // ignore: equal_keys_in_map
      userFirstNameField: '',
      // ignore: equal_keys_in_map
      userLastNameField: '',
    });

    return Person(
      userId: userId,
      firstName: '',
      email: '',
      lastName: '',
    );
  }
}
