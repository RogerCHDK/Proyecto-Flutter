import 'package:flutter/material.dart';
import 'package:programacion_avanzada/widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage = "assets/img/river.jpeg";
  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    final card = Container(
      height: 350.0,
      width: 250,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
          borderRadius: BorderRadius.all(Radius.circular(
              10.0)), //la primera instruccion indica que se va aplicar a toda las esquinas de la imagen y la segunda hace que las esquinas de la imagen esten redondeadas
          shape: BoxShape.rectangle, //le doy forma al contenedor
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0, //es el degradado
              offset: Offset(0.0, 7.0), //la posicion de la sombre en x and y
            )
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[card, FloatingActionButtonGreen()],
    );
  }
}
