import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:programacion_avanzada/User/bloc/bloc_user.dart';
import 'package:programacion_avanzada/User/model/user.dart';
import 'package:programacion_avanzada/User/ui/widgets/user_info.dart';
import 'package:programacion_avanzada/User/ui/widgets/button_bar.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  User user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      //Esto nos trae los datos
      stream:
          userBloc.streamFirebase, //le indicamos de donde va a traer los datos
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showDataProfile(snapshot);
          case ConnectionState.done:
            return showDataProfile(snapshot);
        }
      },
    );
  }

  Widget showDataProfile(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No esta logeado");
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la informacion. Haz login")
          ],
        ),
      );
    } else {
      print("Esta logeado");
      print(snapshot.data);
      user = User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoUrl);
      final title = Text(
        'Perfil',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      );

      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[title],
            ),
            UserInfo(
                user), //le pasamos el objeto que contiene ya los datos del usuario
            ButtonsBar()
          ],
        ),
      );
    }
  }
}
