import 'package:e_commm/Auth/auth_user.dart';

abstract class AuthProvider {
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  Future<AuthUser> loginIn({
    required String email,
    required String password,
  });

  Future<void> forgotPassword({
    required String toEmail,
  });
  AuthUser? get currentUser;

  Future<void> logOut();
  Future<void> initializeApp();
  Future<void> sendEmailVerification();
}
