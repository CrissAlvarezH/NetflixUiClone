import 'package:clone_netflix_referencia/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          cabecera(),
          Container(// Continuar aquí
            height: 50.0,
            width: 50.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://staticuestudio.blob.core.windows.net/buhomag/2018/10/Cartel-de-Elite-en-Netflix-1.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          color: Colors.black45,
        ),
        SafeArea(
          child: NavBarSuperior(),
        ),
      ],
    );
  }
}
