import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:programacion_avanzada/Place/model/place.dart';
import 'package:programacion_avanzada/User/model/user.dart';
import 'package:programacion_avanzada/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreAPI.updatePlaceData(place);
}
