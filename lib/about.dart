import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          leading: GestureDetector( 
              onTap: () {
                Navigator.pop(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: Icon(Icons.arrow_back)),
          backgroundColor: Colors.grey[700],
          title: Text('Sobre o Quiz Learn Clojure!')),
      backgroundColor: Colors.grey[900],
      body: Container(
        margin: new EdgeInsets.symmetric(horizontal: 50.0, vertical: 160.0),
        padding: EdgeInsets.all(60),
        decoration: BoxDecoration(
          color: Colors.purple[800],
          borderRadius: BorderRadius.circular(12),
        ),
        constraints: BoxConstraints(
          maxHeight: 609.0,
        ),
        child: Center(
            child: Column(
          children: <Widget>[
                SizedBox(
                    height: 150.0,
                    child:
                        Image.asset("assets/profile.png", width:100),
                  ),
            Text(
              "Tema escolhido: Quiz \nAplicativo para auxiliar no aprendizado de programação funcional com Clojure\n Acesse: https://clojuredocs.org/ \n Nome do Desenvolvedor: Osmar Vitor Perez",
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            )
          ],
        )),
      ),
    ));
  }
}
