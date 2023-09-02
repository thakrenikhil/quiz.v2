import 'package:flutter/material.dart';
import 'package:quiz/Question.dart';
import 'questionsummary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenanswer, required this.onRestart});
  final List<String> chosenanswer;
  final void Function() onRestart;
  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correctanswer': questions[i].answer[0],
        'selectedanswer': chosenanswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getsummarydata();
    final totalNumQuestion = questions.length;
    final totalNumCorrect = summarydata.where((data) {
      return data['correctanswer'] == data['selectedanswer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$totalNumCorrect out of $totalNumQuestion are correct\n [$totalNumCorrect / $totalNumQuestion]',style: const TextStyle(color: Colors.white,fontSize: 30,),textAlign: TextAlign.center),
            const SizedBox(
              height: 20,
            ),
            QuestionSummary(getsummarydata()),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: onRestart,style: ElevatedButton.styleFrom(shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),backgroundColor: Colors.cyan), child: const Text('Start Over'))
          ],
        ),
      ),
    );
  }
}
