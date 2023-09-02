import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary( this.summaryData,{super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(children: [
           // Text(((data['question_index'] as int) + 1).toString(), style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 24),),
            Expanded(
              child: Column(
                children: [
                  Text( data['question'] as String , style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25),),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(data['correctanswer'] as String, style: const TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 20),),
                  Text(data['selectedanswer'] as String, style: const TextStyle(color: Colors.orange,fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
            )
          ]);
        }).toList()),
      ),
    );
  }
}
