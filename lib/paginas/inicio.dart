import 'package:clone_netflix_referencia/componentes/cartel_principal.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          CartelPrincipal()
        ],
      ),
    );
  }
}
