import 'package:flutter/material.dart';
import 'package:gugudan/settings.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'main_page/shadow_box.dart';

void main() {
  // final database = openDatabase(
  //   join(await getDatabasesPath(), 'gugudan.db'),
  //   onCreate: (db, version){
  //     return db.execute(
  //       "CREATE TALBLE records(solve_date DATE, category TEXT, solved_problem INTEGER, total_problem INTEGER)"
  //     );
  //   },
  //   version: 1
  // );
 // 날짜, 분류, 맞은문제, 전체문제
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gugudan',
      home: GugudanMain(),
    );
  }
}

class GugudanMain extends StatefulWidget {
  GugudanMain({Key key}) : super(key: key);
  @override
  _GugudanMainState createState() => _GugudanMainState();
}

class _GugudanMainState extends State<GugudanMain> {

  @override
  Widget build(BuildContext context) {
    final buttonSize = (MediaQuery.of(context).size.width - 70) / 2;
    final betweenMargin = buttonSize * 0.1;
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(0xF8, 0xF8, 0xF8, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "ㄱㅜㄱㅜㄷㅏㄴ",
              style: TextStyle(
                fontSize: 30
              )
            ),
            SizedBox(height: buttonSize * 0.3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShadowBox(
                  size: buttonSize,
                  title: "구구단표 복습하기",
                  image: 'assets/images/main_box.svg',
                  color: Color.fromARGB(0xFF, 0xFF, 0xC1, 0xA7)
                ),
                SizedBox(width: betweenMargin,),
                ShadowBox(
                  size: buttonSize,
                  title: "구구단 문제 풀기",
                  image: 'assets/images/main_solve.svg',
                  color: Color.fromARGB(0xFF, 0xF6, 0x7E, 0x7D)
                ),
              ],
            ),
            SizedBox(height: betweenMargin,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShadowBox(
                  size: buttonSize,
                  title: "내 기록 점검하기",
                  image: 'assets/images/main_record.svg',
                  color: Color.fromARGB(0xFF, 0x9A, 0x97, 0xC6)
                ),
                SizedBox(width: betweenMargin,),
                ShadowBox(
                  size: buttonSize,
                  title: "환경 설정",
                  image: 'assets/images/main_settings.svg',
                  color: Color.fromARGB(0xFF, 0x70, 0x9D, 0xBF),
                  widget: SettingPage(),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


