import 'dart:io';
import 'package:flutter/material.dart';
import 'package:programacion_avanzada/Place/ui/widgets/card_image.dart';
import 'package:programacion_avanzada/Place/ui/widgets/title_input_location.dart';
import 'package:programacion_avanzada/widgets/gradient_back.dart';
import 'package:programacion_avanzada/widgets/text_input.dart';
import 'package:programacion_avanzada/widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;
  AddPlaceScreen({Key key, this.image});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300.0,
          ),
          Row(
            //Appbar
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context); //con este metodo regreso a la pantalla anterior
                      }),
                ),
              ),
              Flexible(
                  child: Container(
                padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
                child: TitleHeader(title: "Agregar un nuevo lugar"),
              ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithFabIcon(
                    pathImage: "assets/img/river.jpeg",
                    iconData: Icons.camera_alt,
                    width: 350.0,
                    height: 250.0,
                    left: 0,
                  ),
                ), //Foto
                Container(
                  //TextField Title
                  margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
                  child: TextInput(
                    hintText: "Titulo",
                    inputType: null, //le pongo el que esta por defecto
                    maxLines: 1,
                    controller: _controllerTitlePlace,
                  ),
                ),
                TextInput(
                  //Descripcion
                  hintText: "Descripcion",
                  inputType: TextInputType.multiline,
                  maxLines: 4,
                  controller: _controllerDescriptionPlace,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation(
                    hintText: "Agregar locacion",
                    iconData: Icons.location_on,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
