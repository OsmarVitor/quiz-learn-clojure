class Answers{
  int idQuestion;
  List<String> answers;
  int isCorrect;
  bool isChecked;

  Answers({this.idQuestion, this.answers, this.isCorrect,this.isChecked });
}


Answers answersBegner1 = new Answers(idQuestion: 1, answers: ["2", "11", "01", "10"], isChecked: false, isCorrect: 0);
Answers answersBegner2 = new Answers(idQuestion: 1, answers: ["\"true\"", "true", "false","\"fase\""], isChecked: false, isCorrect: 1);
Answers answersBegner3 = new Answers(idQuestion: 1, answers: ["1", "0", "false", "-1"], isChecked: false, isCorrect: 1);
Answers answersBegner4 = new Answers(idQuestion: 1, answers: ["(+ 1)", "(- 1)", "2", "1"], isChecked: false, isCorrect: 2);
Answers answersBegner5 = new Answers(idQuestion: 1, answers: ["no", "NaN", "not", "!"], isChecked: false, isCorrect: 2);
Answers answersBegner6 = new Answers(idQuestion: 1, answers: ["(div)", "/", "*", "//"], isChecked: false, isCorrect: 1);
Answers answersBegner7 =  new Answers(idQuestion: 1, answers: ["1", "3", "2", "false"], isChecked: false, isCorrect: 2);
Answers answersBegner8 = new Answers(idQuestion: 1, answers: ["false", "true", "nil", "7"], isChecked: false, isCorrect: 3);
Answers answersBegner9 = new Answers(idQuestion: 1, answers: ["false", "true", "error","nil"], isChecked: false, isCorrect: 1);
Answers answersBegner10 = new Answers(idQuestion: 1, answers: ["nil", "false", "true", "Error"], isChecked: false, isCorrect: 0);

List<Answers> answersBegner = [
  answersBegner1,
  answersBegner2,
  answersBegner3,
  answersBegner4,
  answersBegner5,
  answersBegner6,
  answersBegner7,
  answersBegner8,
  answersBegner9,
  answersBegner10,
];

Answers answersIntermediary1 = new Answers(idQuestion: 1, answers: ["true", "false", "\"hello\"", "hello"], isChecked: false, isCorrect: 2);
Answers answersIntermediary2 = new Answers(idQuestion: 1, answers: ["\"world\"", "str (\"world\")", "true","( \"world\") "], isChecked: false, isCorrect: 0);
Answers answersIntermediary3 = new Answers(idQuestion: 1, answers: ["0", "12", "11", "false"], isChecked: false, isCorrect: 2);
Answers answersIntermediary4 = new Answers(idQuestion: 1, answers: ["0", "2", "false", "1"], isChecked: false, isCorrect: 3);
Answers answersIntermediary5 = new Answers(idQuestion: 1, answers: ["false", "nil", "0", "null"], isChecked: false, isCorrect: 2);
Answers answersIntermediary6 = new Answers(idQuestion: 1, answers: ["(:b :c :d :e)", "(:e :d :c :b)", "(:a :b :c :d)", "(:a :b :c :d :e)"], isChecked: false, isCorrect: 0);
Answers answersIntermediary7 =  new Answers(idQuestion: 1, answers: ["1", "0", "42", "2"], isChecked: false, isCorrect: 0);
Answers answersIntermediary8 = new Answers(idQuestion: 1, answers: ["[false]", "[true]", "[1 2]", "[2 1]"], isChecked: false, isCorrect: 2);
Answers answersIntermediary9 = new Answers(idQuestion: 1, answers: ["[false fase]", "[nil nil]", "[0 0]","NaN"], isChecked: false, isCorrect: 1);
Answers answersIntermediary10 = new Answers(idQuestion: 1, answers: ["2", "false", "0", "1"], isChecked: false, isCorrect: 3);

List<Answers> answersIntermediary = [
  answersIntermediary1,
  answersIntermediary2,
  answersIntermediary3,
  answersIntermediary4,
  answersIntermediary5,
  answersIntermediary6,
  answersIntermediary7,
  answersIntermediary8,
  answersIntermediary9,
  answersIntermediary10,
];


Answers answersAvanced1 = new Answers(idQuestion: 1, answers: ["1", "0", "false", "true"], isChecked: false, isCorrect: 3);
Answers answersAvanced2 = new Answers(idQuestion: 1, answers: ["0", "nil", "false","true"], isChecked: false, isCorrect: 2);
Answers answersAvanced3 = new Answers(idQuestion: 1, answers: ["{1 \"January\", 2 \"February\"}", "0", "false", "true"], isChecked: false, isCorrect: 0);
Answers answersAvanced4 = new Answers(idQuestion: 1, answers: ["{:a 2, :b 1, :c 3}", "{:a 1, :b 2, :c 3}", "{:a 3, :b 2, :c 1}", "false"], isChecked: false, isCorrect: 1);
Answers answersAvanced5 = new Answers(idQuestion: 1, answers: [":b", "false", "NaN", ":a"], isChecked: false, isCorrect: 3);
Answers answersAvanced6 = new Answers(idQuestion: 1, answers: ["(1 2 3 4 5 6) ", "(0 1 2 3 4 5)", "(6 5 4 3 2 1)", "(5 4 3 2 1 0)"], isChecked: false, isCorrect: 1);
Answers answersAvanced7 =  new Answers(idQuestion: 1, answers: ["(5 4 3 2 1)", "nil", "false", "(1 2 3 4 5)"], isChecked: false, isCorrect: 3);
Answers answersAvanced8 = new Answers(idQuestion: 1, answers: ["false", "true", "nil", "0"], isChecked: false, isCorrect: 0);
Answers answersAvanced9 = new Answers(idQuestion: 1, answers: ["(3 6 9)", "(3 9 12)", "(4 8 12)","(2 4 6)"], isChecked: false, isCorrect: 2);
Answers answersAvanced10 = new Answers(idQuestion: 1, answers: ["(false false true true false)", "false", "(false false true false false)", "(false false false false false)"], isChecked: false, isCorrect: 2);

List<Answers> answersAvanced = [
  answersAvanced1,
  answersAvanced2,
  answersAvanced3,
  answersAvanced4,
  answersAvanced5,
  answersAvanced6,
  answersAvanced7,
  answersAvanced8,
  answersAvanced9,
  answersAvanced10,
];