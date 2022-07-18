import 'package:e_commm/Auth/auth_firebase_provider.dart';
import 'package:e_commm/Auth/auth_provider.dart';
import 'package:e_commm/Auth/auth_user.dart';

class AuthServices implements AuthProvider {
  final AuthProvider authProvider;

  AuthServices({
    required this.authProvider,
  });

  factory AuthServices.fromFirebase() => AuthServices(
        authProvider: FirebaseAuthProvider(),
      );

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) =>
      authProvider.createUser(
        email: email,
        password: password,
      );

  @override
  AuthUser? get currentUser => authProvider.currentUser;

  @override
  Future<void> forgotPassword({
    required String toEmail,
  }) =>
      authProvider.forgotPassword(
        toEmail: toEmail,
      );

  @override
  Future<void> initializeApp() => authProvider.initializeApp();

  @override
  Future<void> logOut() => authProvider.logOut();
  @override
  Future<AuthUser> loginIn({
    required String email,
    required String password,
  }) =>
      authProvider.loginIn(
        email: email,
        password: password,
      );

  @override
  Future<void> sendEmailVerification() => authProvider.sendEmailVerification();
}
