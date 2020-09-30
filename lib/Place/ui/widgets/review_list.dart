import 'package:flutter/material.dart'; //importamos la libreria de material
import 'review.dart';

class ReviewList extends StatelessWidget {
  String pathImage = "assets/img/dia_de_la_tierra.jpg";
  String pathImage2 = "assets/img/river.jpeg";
  String name = "Rogelio";
  String details = "Este una review de prueba";
  String comment = "Comentario de prueba";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review(pathImage, name, details, comment),
        new Review(pathImage2, name, details, comment),
        new Review(pathImage, name, details, comment),
        new Review(pathImage2, name, details, comment),
        new Review(pathImage, name, details, comment),
      ],
    );
  }
}
