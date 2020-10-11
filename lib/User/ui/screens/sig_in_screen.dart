import 'package:flutter/material.dart';
import 'package:programacion_avanzada/User/model/user.dart';
import 'package:programacion_avanzada/widgets/gradient_back.dart';
import 'package:programacion_avanzada/widgets/button_green.dart';
import 'package:programacion_avanzada/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:programacion_avanzada/platzy_trips_cupertino.dart';

class SingInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SingInScreen> {
  UserBloc userBloc;
  double screenWidht; //le declaro de forma general

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    screenWidht = MediaQuery.of(context).size.width; //el metodo build la altera
    userBloc = BlocProvider.of(context);
    return _handleCurrentSesion();
  }

  Widget _handleCurrentSesion() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot es el que trae toda la informacion
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return PlatzyTripsCupertino();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack(
              height:
                  null), //al pasarle el heigth como null se pone en automatico en fullscreen
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                //Esto no permitira que haya desbordmiento de texto
                child: Container(
                  width:
                      screenWidht, //Aqui es donde se evita el desbordamiento haciendo que se ajuste a la pantalla
                  child: Text(
                    "Bienvenido \n Esta es una aplicacion de viajes",
                    style: TextStyle(
                        fontSize: 37.0,
                        fontFamily: "Lato",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ButtonGreen(
                text: "Login con Gmail",
                onPressed: () {
                  userBloc.signOut();
                  userBloc.signIn().then((FirebaseUser user) {
                    //este es el objeto que uso abajo para el procedimiento
                    userBloc.updateDataUser(User(
                        uid: user.uid,
                        name: user.displayName,
                        email: user.email,
                        photoURL: user.photoUrl));
                  }); //el then es un callback, lo que se encuentra dentro es una funcion anonima
                },
                width: 300,
                height: 50.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
