import 'package:quiz_learn_clojure/quizAvanced.dart';
import 'package:quiz_learn_clojure/quizIntermediary.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'about.dart';
import 'quizBegner.dart';
import 'package:flutter/material.dart';

Future<String> getCurrentUser() async {
  FirebaseUser currentUser = await FirebaseAuth.instance.currentUser();
  return currentUser.email;
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String email = getCurrentUser().toString();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[700],
            title: Text('Learn Clojure! | $email')),
        backgroundColor: Colors.grey[900],
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
                margin:
                    new EdgeInsets.symmetric(horizontal: 50.0, vertical: 160.0),
                padding: EdgeInsets.all(60),
                decoration: BoxDecoration(
                  color: Colors.purple[800],
                  borderRadius: BorderRadius.circular(12),
                ),
                constraints: BoxConstraints(
                  maxHeight: 320.0,
                ),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                        child: Text('Iniciante'),
                        color: Colors.green,
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 9.0, horizontal: 60.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizBegner()));
                        }),
                    RaisedButton(
                        child: Text('Intermediário'),
                        color: Colors.green,
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 9.0, horizontal: 45.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizIntermediary()));
                        }),
                    RaisedButton(
                        child: Text('Avançado'),
                        color: Colors.green,
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 9.0, horizontal: 60.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizAvanced()));
                        }),
                  ],
                )),
            SizedBox(
              width: 90,
              height: 32,
              child: RaisedButton(
                  child: Text('Sobre'),
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  }),
            )
          ],
        )),
      ),
    );
  }
}
