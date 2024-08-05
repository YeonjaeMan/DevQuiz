import 'package:DevQuiz/service/ad_helper.dart';
import 'package:DevQuiz/widget/MyBannerAdWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../model/problem.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    required this.correctAnswers,
    required this.incorrectAnswers,
    super.key,
  });

  final List<Problem> correctAnswers;
  final List<Problem> incorrectAnswers;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadInterstitialAd();
  }

  void showAnswersDialog(BuildContext context, List<Problem> correctAnswers,
      List<Problem> incorrectAnswers, bool isCorrect) {
    final answersList = isCorrect ? correctAnswers : incorrectAnswers;
    final title = isCorrect ? "정답" : "오답";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: answersList.map((problem) {
                return Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      problem.question,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "$title: ${problem.answer}",
                      style: TextStyle(
                        color: title == "정답" ? Colors.green : Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "풀이: ${problem.solution}", // 풀이 추가
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 모달창 닫기
              },
              child: Text("닫기"),
            ),
          ],
        );
      },
    );
  }

  // TODO: Add _interstitialAd
  InterstitialAd? _interstitialAd;

  // TODO: Implement _loadInterstitialAd()
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              Navigator.pop(context);
            },
          );

          setState(() {
            _interstitialAd = ad;
          });
        },
        onAdFailedToLoad: (err) {
          print('Failed to load an interstitial ad: ${err.message}');
        },
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _interstitialAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("결과"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("정답: ${widget.correctAnswers.length}개",
                  style: TextStyle(fontSize: 20)),
              Text("오답: ${widget.incorrectAnswers.length}개",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showAnswersDialog(context, widget.correctAnswers,
                          widget.incorrectAnswers, true); // 정답 보기
                    },
                    child: Text("정답 보기"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showAnswersDialog(context, widget.correctAnswers,
                          widget.incorrectAnswers, false); // 오답 보기
                    },
                    child: Text("오답 보기"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("다시 시작하기"),
                onPressed: () {
                  if(_interstitialAd != null) {
                    _interstitialAd?.show();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBannerAdWidget(),
    );
  }
}
