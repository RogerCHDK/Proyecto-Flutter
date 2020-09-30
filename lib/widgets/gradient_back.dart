import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";
  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Container(
      height: 250,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3), //Color mas claro
                Color(0xFF584CD1) //Color mas obscuro
              ],
              begin: FractionalOffset(
                  0.2, 0.0), //orientacion de que tanto quiero el gradiente
              end: FractionalOffset(1.0,
                  0.6), //hasta donde quiero que llegue el color mas obscuro
              stops: [
                0.0,
                0.6
              ], //Orientacion del gradiente,puede ir de arriba hacia abajo
              tileMode: TileMode
                  .clamp //color de relleno en caso de que no cargue el gradiente
              )),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
