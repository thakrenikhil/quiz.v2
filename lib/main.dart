import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[800],
        ),
        child: const Quiz(),

      ),
    )),
  );
}
