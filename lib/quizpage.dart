import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  List<String> questions = [
    'Do You Speak English?',
    'The baby frog is known as',
    'How many seconds make one hour?',
    'Sometimes, a journalist may find it helpful to feign ignorance during an interview.',
    'If reporters think of questions as a subject is telling story, they should politely stop the interview and ask the question before they forget it or the subject changes.',
    'Reporters should conduct interviews in a neutral location, never in a sources home or office.',
  ];
  List<bool> answer = [
    true,
    false,
    false,
    true,
    true,
    false,
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
              questions[questionNumber],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 350,
            child: TextButton(
              onPressed: () {
                bool correctAnswer = answer[questionNumber];
                setState(() {
                  questionNumber++;
                });
                print(correctAnswer);
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
                bool correctAnswer = answer[questionNumber];
                print(correctAnswer);
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
