import 'package:flutter/material.dart';
import 'package:quiz/QuestionScreen.dart';
import 'package:quiz/StartScreen.dart';
import 'package:quiz/resultscreen.dart';
import 'Question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activestate;
  List<String> selectedanswer = [];
  @override
  void initState() {activestate = StartScreen(SwitchScreen);
    // TODO: implement initState
    super.initState();
  }

  void SwitchScreen (){
    setState(() {
      activestate =  QuestionScreen(onSelectedanswer: chooseanswer);
    });
  }
  void chooseanswer (String answer){
    setState(() {
      selectedanswer.add(answer);

      if(selectedanswer.length == questions.length){
        setState(() {
          activestate = ResultScreen(chosenanswer: selectedanswer, onRestart: () { return restartquiz(); },);
        });
      }
    });
  }
  void restartquiz(){
    setState(() {
      selectedanswer = [];
      activestate = QuestionScreen(onSelectedanswer: chooseanswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget screenwidget = StartScreen(SwitchScreen);

    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
      ),
      child: activestate,

    );
  }
}
