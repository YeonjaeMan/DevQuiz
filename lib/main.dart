import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(MobileAds.instance.initialize());

  runApp(const MyApp());
}

// 글자 위젯 : Text()
// 이미지 위젯 : Icon(Icons.아이콘이름)
// 아이콘 위젯 : Image.asset('경로')
// 박스 위젯 : Container(), SizedBox()
// 상.중.하로 나눠주는 위젯 : Scaffold() - AppBar, Container, bottomNavigationBar
// 가로 : Row(), 세로 : Column() - mainAxisAlignment, crossAxisAlignment
// margin or padding : EdgeInsets.all, .fromLTRB
// 박스 디자인 : BoxDecoration()
// 박스 정렬 : Align()
// double.infinity
// 글자 디자인 : style: TextStyle()
// 버튼 : TextButton(), IconButton(), ElevatedButton() 중 택1
// %로 주고 싶다면 Flexible()
// 스크롤이 필요하면 ListView()
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}
