import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:programacion_avanzada/User/model/user.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACE = "places"; //declaramos nuestras colecciones

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user
        .uid); //aqui definimos que a la coleccion users se le va agregar un documento
    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }
}
