import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  String imagen1 = "assets/img/river.jpeg";
  String imagen2 = "assets/img/mountain_stars.jpeg";
  String imagen3 = "assets/img/beach.jpeg";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection:
            Axis.horizontal, //hago que el scroll se haga de manera horizontal
        children: <Widget>[
          CardImage(imagen1),
          CardImage(imagen2),
          CardImage(imagen3),
        ],
      ),
    );
  }
}
