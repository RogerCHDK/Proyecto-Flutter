import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool bandera = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav", //cuando alguien se posiciona sobre el aparece el mensaje
      onPressed: onPressedFav,
      child: Icon(
        //mi_metodo(),
        this.bandera ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Favorito 3"),
    ));

    setState(() {
      this.bandera = !this
          .bandera; //le pone un estado a la bandera, en vez de estar reseteando la aplicacion
    });
  }

  IconData mi_metodo() {
    if (this.bandera) {
      return Icons.favorite;
    } else {
      return Icons.favorite_border;
    }
  }
}
