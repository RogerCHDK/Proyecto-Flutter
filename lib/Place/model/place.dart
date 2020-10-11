import 'package:flutter/material.dart';
import 'package:programacion_avanzada/User/model/user.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  String pais;
  int likes;
  User userOwner;

  Place(
      {Key key,
      @required this.name,
      @required this.description,
      @required this.urlImage,
      this.likes,
      @required this.userOwner,
      this.pais});
}
