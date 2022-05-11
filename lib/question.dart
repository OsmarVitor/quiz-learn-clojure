class Question{
  int id;
  String question;
  int nivel;

  Question({this.id, this.question, this.nivel});

}

Question questionBegner1 = new Question(id: 1, question: "Qual o retorno de: \n(+ 1 1)", nivel: 1);
Question questionBegner2 = new Question(id: 1, question: "O que ira retornar? \n (= true true)", nivel: 1);
Question questionBegner3 = new Question(id: 1, question: "Qual o retorno de: \n (- 1 1)", nivel: 1);
Question questionBegner4 = new Question(id: 1, question: "Selecione o número que falta para realizar a operação de igualdade \n (= __ (+ 1 1))", nivel: 1);
Question questionBegner5 = new Question(id: 1, question: "Qual comando em Clojure é o operador de negação NOT?", nivel: 1);
Question questionBegner6 = new Question(id: 1, question: "Qual é o operador que realiza a Divisão em Clojure?", nivel: 1);
Question questionBegner7 = new Question(id: 1, question: "O que ira retornar? \n (/ 4 2)", nivel: 1);
Question questionBegner8 = new Question(id: 1, question: "Selecione o número que falta para realizar a operação de igualdade \n(= (+ 3 4) 7 (+ 2 __))", nivel: 1);
Question questionBegner9 = new Question(id: 1, question: "Qual o retorno da função? \n (not (= 1 2))", nivel: 1);
Question questionBegner10 = new Question(id: 1, question: "Selecione o comando que falta para realizar a operação de igualdade \n (= __ nil)", nivel: 1);

List<Question> questionsBegner = [
  questionBegner1,
  questionBegner2,
  questionBegner3,
  questionBegner4,
  questionBegner5,
  questionBegner6,
  questionBegner7,
  questionBegner8,
  questionBegner9,
  questionBegner10
];

Question questionIntermediary1 = new Question(id: 1, question: "Preencha a lacuna com a opção para completar a igualdade e retornar true: \n(= __ \"hello\")", nivel: 2);
Question questionIntermediary2 = new Question(id: 1, question: "Preencha a lacuna com a opção para completar a igualdade e retornar true \n (= __ (str 'world))", nivel: 2);
Question questionIntermediary3 = new Question(id: 1, question: "Qual o retorno de: \n(count \"Hello World\")", nivel: 2);
Question questionIntermediary4 = new Question(id: 1, question: "Qual o retorno de: \n (first '(1 2 3 4 5))", nivel: 2);
Question questionIntermediary5 = new Question(id: 1, question: "Qual o retorno de: \n (count '())", nivel: 2);
Question questionIntermediary6 = new Question(id: 1, question: "Qual o retorno de: \n(pop '(:a :b :c :d :e))", nivel: 2);
Question questionIntermediary7 = new Question(id: 1, question: "Qual o retorno de: \n(count [42])", nivel: 2);
Question questionIntermediary8 = new Question(id: 1, question: "Qual o retorno de: \n(vec '(1 2))", nivel: 2);
Question questionIntermediary9 = new Question(id: 1, question: "Qual o retorno de: \n(vector nil nil))", nivel: 2);
Question questionIntermediary10 = new Question(id: 1, question: "Qual o retorno de: \n ({:a 1 :b 2} :a)", nivel: 2);

List<Question> questionIntermediary = [
  questionIntermediary1, 
  questionIntermediary2, 
  questionIntermediary3, 
  questionIntermediary4, 
  questionIntermediary5, 
  questionIntermediary6, 
  questionIntermediary7,
  questionIntermediary8, 
  questionIntermediary9, 
  questionIntermediary10];


Question questionAvanced1 = new Question(id: 1, question: "Qual o retorno de: \n(contains? {:a nil :b nil} :b)", nivel: 3);
Question questionAvanced2 = new Question(id: 1, question: "Qual o retorno de: \n (contains? {:a nil :b nil} :c)", nivel: 3);
Question questionAvanced3 = new Question(id: 1, question: "Qual o retorno de: \n (assoc {1 \"January\"} 2 \"February\")", nivel: 3);
Question questionAvanced4 = new Question(id: 1, question: "Qual o retorno de: \n (merge {:a 1 :b 2} {:c 3})", nivel: 3);
Question questionAvanced5 = new Question(id: 1, question: "Qual o retorno de: \n (if (false? (= 4 5))\n:a \n:b)", nivel: 3);
Question questionAvanced6 = new Question(id: 1, question: "Qual o retorno de: \n(for [x (range 6)]\n x)", nivel: 3);
Question questionAvanced7 = new Question(id: 1, question: "Qual o retorno de: \n (quote (1 2 3 4 5))", nivel: 3);
Question questionAvanced8 = new Question(id: 1, question: "Qual o retorno de: \n(= \"hello\" :hello 'hello)", nivel: 3);
Question questionAvanced9 = new Question(id: 1, question: "Qual o retorno de: \n (map (fn [x] (* 4 x)) [1 2 3])", nivel: 3);
Question questionAvanced10 = new Question(id: 1, question: "Qual o retorno de: \n (map nil? [:a :b nil :c :d])", nivel: 3);


List<Question> questionAvanced = [
  questionAvanced1, 
  questionAvanced2, 
  questionAvanced3, 
  questionAvanced4, 
  questionAvanced5, 
  questionAvanced6, 
  questionAvanced7, 
  questionAvanced8,
  questionAvanced9, 
 questionAvanced10];
 