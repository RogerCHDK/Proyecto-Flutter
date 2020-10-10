import 'package:flutter/material.dart';
import 'package:programacion_avanzada/Place/ui/widgets/description_place.dart';
import 'package:programacion_avanzada/Place/ui/widgets/review_list.dart';
import 'package:programacion_avanzada/Place/ui/screens/header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String namePlace = "Valle de Toluca";
  String descriptionPlace =
      "Es un blattle royal gratis lanzado en 2019 por al compañia Respawns";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Stack(
      //pone un elemento encima de otro
      children: <Widget>[
        ListView(
          //pone prinero el listview
          children: <Widget>[
            new DescriptionPlace(namePlace, 4, descriptionPlace),
            new ReviewList(),
          ],
        ),
        // GradientBack("Popular"), //encima pone el gradiente
        HeaderAppBar()
      ],
    );
  }
}
