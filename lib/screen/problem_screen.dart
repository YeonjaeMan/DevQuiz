import 'package:DevQuiz/widget/myBannerAdWidget.dart';
import 'package:flutter/material.dart';
import '../model/problem.dart';
import 'result_screen.dart';

class ProblemScreen extends StatefulWidget {
  const ProblemScreen({required this.label, required this.problems, super.key});

  final String label;
  final List<Problem> problems;

  @override
  State<ProblemScreen> createState() => _ProblemScreenState();
}

class _ProblemScreenState extends State<ProblemScreen> {
  int currentProblemIndex = 0;
  String? selectedAnswer;
  bool isSubmit = false;
  List<Problem> correct = [];
  List<Problem> incorrect = [];

  // 다음 문제
  void nextProblem() {
    setState(() {
      if (currentProblemIndex < widget.problems.length - 1) {
        currentProblemIndex++;
        selectedAnswer = null;
        isSubmit = false;
      } else {
        // 마지막 문제를 푼 후 결과 화면으로 이동
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              correctAnswers: correct,
              incorrectAnswers: incorrect,
            ),
          ),
        );
      }
    });
  }

  // 제출 버튼 클릭 시 호출될 메서드
  void submitAnswer() {
    setState(() {
      isSubmit = true;

      final problem = widget.problems[currentProblemIndex];
      if (selectedAnswer == problem.answer) {
        correct.add(problem);
      } else {
        incorrect.add(problem);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final problem = widget.problems[currentProblemIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(problem.question, style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            for (var option in problem.options)
              ListTile(
                title: Text(option),
                leading: Radio<String>(
                  value: option,
                  // 현재 선택된 라디오 버튼의 값
                  groupValue: selectedAnswer,
                  // 라디오 버튼을 선택할 때 호출되는 콜백 함수
                  onChanged: (value) {
                    isSubmit
                        ? null
                        : setState(() {
                            selectedAnswer = value;
                          });
                  },
                ),
              ),
            SizedBox(height: 20),
            isSubmit
                ? Solution(
                    problem: problem,
                    selectedAnswer: selectedAnswer,
                    nextProblem: nextProblem,
                  )
                : ElevatedButton(
                    onPressed: submitAnswer,
                    child: Text("제출"),
                  ),
          ],
        ),
      ),
      bottomNavigationBar: MyBannerAdWidget(),
    );
  }
}

class Solution extends StatelessWidget {
  const Solution(
      {required this.problem,
      required this.selectedAnswer,
      required this.nextProblem,
      super.key});

  final Problem problem;
  final String? selectedAnswer;
  final VoidCallback nextProblem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          problem.answer == selectedAnswer
              ? "정답입니다!"
              : "틀렸습니다. 정답은: ${problem.answer}",
          style: TextStyle(
            color: problem.answer == selectedAnswer ? Colors.green : Colors.red,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "풀이: ${problem.solution}", // 풀이 추가
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: nextProblem,
          child: Text("다음 문제"),
        ),
      ],
    );
  }
}
