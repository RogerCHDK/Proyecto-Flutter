import 'package:flutter/material.dart'; //importamos la libreria de material
import 'package:programacion_avanzada/widgets/button_purple.dart';

//el nombre de los archivos va en minisculas y el de la clase empieza con mayusculas
class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    //este es el metodo build que es el que construye la interfaz que construye el widget y los elementos que se trabajan

    //throw UnimplementedError();
    final halfStar = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final borderStar = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20, right: 20),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            halfStar,
            borderStar,
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, //hace que todos los elementos se acomoden a la izquierda
      children: <Widget>[title_stars, description, ButtonPurple("Navigate")],
    );
  }
}
