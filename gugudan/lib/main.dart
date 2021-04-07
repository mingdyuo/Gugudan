import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main_page/shadow_box.dart';

void main() {
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
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(0xF8, 0xF8, 0xF8, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("ㄱㅜㄱㅜㄷㅏㄴ"),

            ShadowBox(
              size: buttonSize,
              title: "ddd",
              image: 'assets/images/main_box.svg',
              color: Colors.yellow
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
