import 'package:dev_quiz/widget/my_banner_ad_widget.dart';
import 'package:flutter/material.dart';
import 'problem_screen.dart';

import '../data/operating_system/operating_system_problem.dart';
import '../data/data_structure/data_structure_problem.dart';
import '../data/algorithm/algorithm_problem.dart';
import '../data/network/network_problem.dart';
import '../data/react/react_problem.dart';
import '../data/vue/vue_problem.dart';
import '../data/angular/angular_problem.dart';
import '../data/flutter/flutter_problem.dart';
import '../data/react_native/react_native_problem.dart';
import '../data/spring/spring_problem.dart';
import '../data/nodejs/nodejs_problem.dart';
import '../data/django/django_problem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dev.Quiz - 20제'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: _buildButtons(context),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBannerAdWidget(),
    );
  }

  List<Widget> _buildButtons(BuildContext context) {
    List<Map<String, dynamic>> buttonLabels = [
      {'label': '운영체제 20제', 'problems': operatingSystems},
      {'label': '자료구조 20제', 'problems': dataStructures},
      {'label': '알고리즘 20제', 'problems': algorithms},
      {'label': '네트워크 20제', 'problems': networks},
      {'label': 'React 20제', 'problems': reacts},
      {'label': 'Vue 20제', 'problems': vues},
      {'label': 'Angular 20제', 'problems': angulars},
      {'label': 'Flutter 20제', 'problems': flutters},
      {'label': 'React Native 20제', 'problems': reactNatives},
      {'label': 'Spring 20제', 'problems': springs},
      {'label': 'NodeJS 20제', 'problems': nodejss},
      {'label': 'Django 20제', 'problems': djangos},
    ];

    return buttonLabels.map((button) {
      return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProblemScreen(
                  label: button['label'], problems: button['problems']),
            ),
          );
        },
        child: Text(button['label']),
      );
    }).toList();
  }
}
