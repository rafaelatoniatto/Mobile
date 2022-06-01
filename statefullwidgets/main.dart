import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro Statefull',
      home: MinhaHome()
    );
  }
}

class MinhaHome extends StatefulWidget{
    const MinhaHome({Key? key}) : super(key: key);

    @override State<MinhaHome> createState() => _MinhaHomeState();
}

class _MinhaHomeState extends State<MinhaHome>{
    int _largura = 200;
    int _altura  = 300;

    void AumentarLargura(){
        setState( () {
            _largura += 200;
        });
    }

    void DiminuirLargura(){
      setState(() {
        _largura -= 200;
      });
    }

    void AumentarAltura(){
      setState(() {
        _altura += 300;
      });
    }

    void DiminuirAltura(){
      setState(() {
         _altura -= 300;
      });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Brincando com Flutter - Tamanhos"),
                backgroundColor: Colors.black         
            ),
        body: Center(
            child: Image.network("https://placebear.com/$_altura/$_largura"), 
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.black,
            child: Container(height: 50,
                child: Row( 
                    children: <Widget>[
                    Icon (Icons.widgets_sharp, color:Colors.white),
                    IconButton(
                        icon: Icon(Icons.add_circle),
                        color: Colors.white,
                        onPressed: AumentarLargura
                    ),
                    IconButton(
                        icon: Icon(Icons.remove_circle),
                        color: Colors.white,
                        onPressed: DiminuirLargura
                    ),
                    Icon(Icons.height_outlined, color:Colors.white),
                    IconButton(
                        icon: Icon(Icons.add_circle),
                        color: Colors.white,
                        onPressed: AumentarAltura
                    ),
                    IconButton(
                        icon: Icon(Icons.remove_circle),
                        color: Colors.white,
                        onPressed: DiminuirAltura
                    )
                ]
                )
            )
        ));
    }
}

