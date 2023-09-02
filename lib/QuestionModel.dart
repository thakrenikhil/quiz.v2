class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
final String text;
final List<String> answer;

List<String> getshuffeledList(){
 final shuffeledList = List.of(answer);
  shuffeledList.shuffle();
  return shuffeledList;
  
}

}