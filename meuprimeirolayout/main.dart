import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  Widget cabecalho(){
    return Column(children: <Widget>[
      Container(
          child: Center(
              child: Text("Rafaela Toniatto", textDirection: TextDirection.ltr,             
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 20))),
                width: double.infinity,
                height: 100,
                color: Colors.pink,
                
    )]);
  }

  Widget conteudo() {
    return Row(children: <Widget>[
      Expanded(
          child: Container(
            child: Center(
              child: Image.network(
                "https://instagram.fcpq5-1.fna.fbcdn.net/v/t51.2885-15/279967053_5119060398176239_4783939601382406013_n.webp?stp=dst-jpg_e35_s750x750_sh0.08&_nc_ht=instagram.fcpq5-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=4B6-d8o3Df8AX_Tb3vX&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgzMzI0MjMyMzQ4MTExNzE4NQ%3D%3D.2-ccb7-4&oh=00_AT8o0lUTh0CdzVhPk4CckOPyGi3baWunfoy9gT3uIkCG5w&oe=628516C0&_nc_sid=30a2ef",
                  width: 300.0,
          ),
        ),

      width: 190.0,
      height: double.infinity,
      color: Colors.white,
      )),

      Expanded(
          child: Container(
            child: Center(
                child: Text( "Iniciante no mundo da programação, do nada, tentando, acabei descobrindo que realmente gosto e quero trabalhar com essa área.",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20,
                    color: (Colors.black),
                    fontWeight: FontWeight.bold ),

        )),

        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        width: 190.0,
        height: double.infinity,
        color: Colors.white,
      ))

    ], textDirection: TextDirection.ltr);

  }

    Widget rodape(){
      return Container(
        child: Center(
          child: Text("Etec Bento Quirino | DS | 2ºNoturno", textDirection: TextDirection.ltr,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 20))),
          color: Colors.pink,
          width: double.infinity,
          height: 100,
      );
  }

  @override

  Widget build(BuildContext context) {

    return Column(children: <Widget>[

      cabecalho(),

      Expanded (child: conteudo()),

      rodape()

    ]);
}   }

 

     
