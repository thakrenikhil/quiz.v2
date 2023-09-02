import 'package:flutter/material.dart';
import 'package:quiz/OptionButton.dart';
import 'package:quiz/Question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedanswer});
  final void Function(String answer) onSelectedanswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentquestionIndex = 0;
  void answerquestion(String SelectedAnswer) {
    widget.onSelectedanswer(SelectedAnswer);
    setState(() {
      currentquestionIndex = currentquestionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentquestionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                color: Colors.white60,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ...currentquestion.getshuffeledList().map((answer) {
              return OptionButton(
                  option: answer,
                  onTap: () {
                    answerquestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
