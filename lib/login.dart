import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

void singIn(String email, String password, context) async {
  try {
    AuthResult response = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    if (response.user.uid != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    }
  } catch (e) {
    print('Error $e');
  }
}

void createUser(String email, String password, context) async {
  AuthResult user = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password);
  if (user.user.email != null) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }
}

class _Login extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginField = TextFormField(
      controller: email,
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          hintText: "fatec",
          labelText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final passwordField = TextFormField(
      controller: password,
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          hintText: "fatec",
          labelText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Column(children: <Widget>[
          Container(
              child: RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("Entrar", textAlign: TextAlign.center),
                  onPressed: () {
                    singIn(email.text, password.text, context);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              title:
                                  Text("Acesso inválido, cadastre-se abaixo"),
                              actions: <Widget>[
                                FlatButton(
                                    child: Text("Ok"),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()));
                                    })
                              ]);
                        });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)))),
          Container(
            child: RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text("Cadastrar", textAlign: TextAlign.center),
                onPressed: () {
                  createUser(email.text, password.text, context);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            title: Text(
                                "Usuário criado! Clique em Ok para entrar no Quiz"),
                            actions: <Widget>[
                              FlatButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  })
                            ]);
                      });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
          )
        ]));

    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            backgroundColor: Colors.grey[700], title: Text('Learn Clojure!')),
        body: Center(
            child: SingleChildScrollView(
          child: Container(
              margin:
                  new EdgeInsets.symmetric(horizontal: 50.0, vertical: 160.0),
              decoration: BoxDecoration(
                  color: Colors.purple[800],
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                    child: Image.asset("assets/logo.png", width: 100),
                  ),
                  SizedBox(
                    width: 900,
                    height: 40,
                  ),
                  loginField,
                  SizedBox(height: 10.0),
                  passwordField,
                  SizedBox(
                    width: 900,
                    height: 40,
                  ),
                  buttonLogin,
                ],
              )),
        )));
  }
}
