import 'package:flutter/material.dart';
import 'package:i_am_rich/Quiz/Question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  List<Question> questionBank = [
    Question(q: 'Do You Speak English?', a: false),
    Question(q: 'The baby frog is known as', a: true),
    Question(q: 'How many seconds make one hour?', a: false),
    Question(
        q: 'Sometimes, a journalist may find it helpful to feign ignorance during an interview.',
        a: false),
    Question(
        q: 'If reporters think of questions as a subject is telling story, they should politely stop the interview and ask the question before they forget it or the subject changes.',
        a: false)
  ];

  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              questionBank[questionNumber].questionText,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 350,
            child: TextButton(
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;
                setState(() {
                  questionNumber++;
                });
                if (correctAnswer = true) {
                  scoreKeeper.add(
                    const Icon(
                      Icons.ads_click,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    const Icon(
                      Icons.wrong_location,
                    ),
                  );
                }
              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: const Text(
                'True',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 350,
            child: TextButton(
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;
                if (correctAnswer = false) {
                  scoreKeeper.add(
                    const Icon(
                      Icons.wrong_location,
                    ),
                  );
                } else {
                  scoreKeeper.add(
                    const Icon(
                      Icons.ads_click,
                    ),
                  );
                }
                setState(() {
                  questionNumber++;
                });
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'false',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
