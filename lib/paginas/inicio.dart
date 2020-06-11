import 'package:clone_netflix_referencia/componentes/cartel_principal.dart';
import 'package:clone_netflix_referencia/componentes/item_img.dart';
import 'package:clone_netflix_referencia/componentes/item_redondeado.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Avances', ItemRedondeado(), 10),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Tendencias', ItemImg(), 10),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Mi lista', ItemImg(), 10),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Estrenos', ItemImg(), 10),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            itemCount: cantidad,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
