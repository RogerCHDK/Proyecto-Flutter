import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programacion_avanzada/User/model/user.dart';
import 'package:programacion_avanzada/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:programacion_avanzada/User/repository/cloud_firestore_repository.dart';

class UserBloc extends Bloc {
  final _auth_repository = AuthRepository();
  //casos de usos
  //1. hacer sign in en la aplicacion con google
  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  //2.Registrar usuario en la base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateDataUser(User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  signOut() {
    _auth_repository.singOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
