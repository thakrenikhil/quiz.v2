import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 250,
        ),
        Center(
          child: Image.asset(
            'assets/images/img.png',
            width: 200,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: () {
            startquiz();
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            padding: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
            side: const BorderSide(width: 2,color: Colors.black87)
          ),
          label: const Text('Start',style: TextStyle(color: Colors.white)),
          icon: const Icon(Icons.arrow_right_alt_rounded),
        ),
      ],
    );
  }
}
