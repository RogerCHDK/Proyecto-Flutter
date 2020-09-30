import 'package:flutter/material.dart'; //importamos la libreria de material
import 'description_place.dart';

class Review extends StatelessWidget {
  String pathImage, name, details, comment;

  Review(this.pathImage, this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        //top: 320,
        left: 20,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final contenedor_review = Row(
      children: <Widget>[
        userInfo,
        Container(
          margin: EdgeInsets.only(right: 3.0),
          child: Icon(
            Icons.star,
            color: Color(0xFFf2C611),
          ),
        )
      ],
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, //por defecto las cosas se colocan centradas, por eso con esta instruccion le indicamos que se ubiquie al inicio es decir a la izqueirda
      children: <Widget>[
        userName,
        contenedor_review,
        userComments,
      ],
    );

    final photo = Container(
      //vamos a meter la imagen en un contenedor para darle formato
      margin: EdgeInsets.only(
        //le damos formato a la imagen
        top: 20,
        left: 20,
      ),
      width: 80, //aqui le damos el alto y el ancho
      height: 80,

      decoration: BoxDecoration(
          //le damos forma circular a la foto
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit
                  .cover, //sera la posicion de la imagen, con el .cover lo que hacemos es centrar la imagen
              image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
