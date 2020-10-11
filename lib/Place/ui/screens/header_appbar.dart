import 'package:flutter/material.dart';
import 'package:programacion_avanzada/widgets/gradient_back.dart';
import 'package:programacion_avanzada/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Stack(
      children: <Widget>[GradientBack(height: 250.0), CardImageList()],
    );
  }
}
