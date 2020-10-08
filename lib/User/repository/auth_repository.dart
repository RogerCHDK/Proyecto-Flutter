import 'package:firebase_auth/firebase_auth.dart';
import 'package:programacion_avanzada/User/repository/firebase_auth_api.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<FirebaseUser> signInFirebase() => _firebaseAuthAPI.signIn();

  singOut() => _firebaseAuthAPI.signOut();
}
