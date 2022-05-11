import 'package:flutter/material.dart';
import 'package:quiz_learn_clojure/home.dart';
import 'package:quiz_learn_clojure/answers.dart';
import 'package:quiz_learn_clojure/score.dart';
import 'package:quiz_learn_clojure/question.dart';

class QuizBegner extends StatefulWidget {
  @override
  _QuizBegnerState createState() => _QuizBegnerState();
}

bool verifyEndQuiz(int number) {
  return number == 9 ? true : false;
}

int number = 0;

class _QuizBegnerState extends State<QuizBegner>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Icon(Icons.arrow_back)),
                backgroundColor: Colors.grey[700],
                title: Text('Learn Clojure!')),
            backgroundColor: Colors.grey[900],
            body: Container(
              height: 590,
              width: 900,
              margin:
                  new EdgeInsets.symmetric(horizontal: 30.0, vertical: 103.0),
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.purple[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 210,
                        width: 1000,
                        padding: EdgeInsets.only(
                            left: 73.0, right: 50.0, top: 60, bottom: 30),
                        child: Text(questionsBegner[number].question)),
                    Container(
                      height: 300,
                      width: 300,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.only(
                                left: 0.0, right: 0.0, top: 10, bottom: 0),
                            child: RaisedButton(
                                child: Text(answersBegner[number].answers[0]),
                                color: Colors.green,
                                textColor: Colors.white,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {
                                  if (answersBegner[number].isCorrect == 0)
                                    score.acertos++;
                                  else
                                    score.erros++;
                                  setState(() {
                                    build(context);
                                  });
                                  if (verifyEndQuiz(number)) {
                                    number = 0;
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                              title: Text("Resultado do Quiz"),
                                              content: Text(
                                                  "Acertos: ${score.acertos}\n Erros: ${score.erros}"),
                                              actions: <Widget>[
                                                FlatButton(
                                                    child: Text("Ok"),
                                                    onPressed: () {
                                                      number = 0;
                                                      score.acertos = 0;
                                                      score.erros = 0;
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Home()));
                                                    })
                                              ]);
                                        });
                                  }
                                  number++;
                                }),
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.only(
                                left: 0.0, right: 0.0, top: 10, bottom: 0),
                            child: RaisedButton(
                                child: Text(answersBegner[number].answers[1]),
                                color: Colors.green,
                                textColor: Colors.white,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {
                                  if (answersBegner[number].isCorrect == 1)
                                    score.acertos++;
                                  else
                                    score.erros++;
                                  setState(() {
                                    build(context);
                                  });
                                  if (verifyEndQuiz(number)) {
                                    number = 0;
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                              title: Text("Resultado do Quiz"),
                                              content: Text(
                                                  "Acertos: ${score.acertos}\n Erros: ${score.erros}"),
                                              actions: <Widget>[
                                                FlatButton(
                                                    child: Text("Ok"),
                                                    onPressed: () {
                                                      number = 0;
                                                      score.acertos = 0;
                                                      score.erros = 0;
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Home()));
                                                    })
                                              ]);
                                        });
                                  }
                                  number++;
                                }),
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.only(
                                left: 0.0, right: 0.0, top: 10, bottom: 0),
                            child: RaisedButton(
                                child: Text(answersBegner[number].answers[2]),
                                color: Colors.green,
                                textColor: Colors.white,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {
                                  if (answersBegner[number].isCorrect == 2)
                                    score.acertos++;
                                  else
                                    score.erros++;
                                  setState(() {
                                    build(context);
                                  });
                                  if (verifyEndQuiz(number)) {
                                    number = 0;
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                              title: Text("Resultado do Quiz"),
                                              content: Text(
                                                  "Acertos: ${score.acertos}\n Erros: ${score.erros}"),
                                              actions: <Widget>[
                                                FlatButton(
                                                    child: Text("Ok"),
                                                    onPressed: () {
                                                      number = 0;
                                                      score.acertos = 0;
                                                      score.erros = 0;
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Home()));
                                                    })
                                              ]);
                                        });
                                  }
                                  number++;
                                }),
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            padding: EdgeInsets.only(
                                left: 0.0, right: 0.0, top: 10, bottom: 0),
                            child: RaisedButton(
                                child: Text(answersBegner[number].answers[3]),
                                color: Colors.green,
                                textColor: Colors.white,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                onPressed: () {
                                  if (answersBegner[number].isCorrect == 3)
                                    score.acertos++;
                                  else
                                    score.erros++;
                                  setState(() {
                                    build(context);
                                  });
                                  if (verifyEndQuiz(number)) {
                                    number = 0;
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                              title: Text("Resultado do Quiz"),
                                              content: Text(
                                                  "Acertos: ${score.acertos}\n Erros: ${score.erros}"),
                                              actions: <Widget>[
                                                FlatButton(
                                                    child: Text("Ok"),
                                                    onPressed: () {
                                                      number = 0;
                                                      score.acertos = 0;
                                                      score.erros = 0;
                                                      Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Home()));
                                                    })
                                              ]);
                                        });
                                  }
                                  number++;
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
