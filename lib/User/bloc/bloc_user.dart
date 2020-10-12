import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programacion_avanzada/Place/model/place.dart';
import 'package:programacion_avanzada/User/model/user.dart';
import 'package:programacion_avanzada/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:programacion_avanzada/User/repository/cloud_firestore_api.dart';
import 'package:programacion_avanzada/User/repository/cloud_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:programacion_avanzada/User/ui/widgets/profile_place.dart';

class UserBloc extends Bloc {
  final _auth_repository = AuthRepository();
  //casos de usos

  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

//1. hacer sign in en la aplicacion con google
  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  //2.Registrar usuario en la base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateDataUser(User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreRepository.updatePlaceData(place);

  //Traer datos de la base de datos
  Stream<QuerySnapshot> placesListStream = Firestore.instance
      .collection(CloudFirestoreAPI().PLACES)
      .snapshots(); //Lo ponemos en escucha en caso de que haya un cambio
  Stream<QuerySnapshot> get placesStream =>
      placesListStream; //aqui leemos el stream
  List<ProfilePlace> buildPlaces(List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreRepository.buildPlaces(placesListSnapshot);

//cerrar sesion
  signOut() {
    _auth_repository.singOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
