import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  @override
  void initState()
  {
    super.initState();
  }  

  List<String> sPlayMethod = ["클릭하며 풀기", "직접 쓰며 풀기"];
  int playMethodClicked = 1;


  List<String> sProblemCount = ["10문제", "15문제", "20문제"];
  int problemCountClicked = 1;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    

    return Scaffold(
      backgroundColor: Color.fromRGBO(0xF8, 0xF8, 0xF8, 1),
      body: Padding(
        padding: EdgeInsets.only(
          top: statusBarHeight,
          left: statusBarHeight / 2,
          right: statusBarHeight / 2 ,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "환경 설정"
            ),
            SettingCategory(
              title: "풀이 방식",
              details: sPlayMethod,
              clicked: playMethodClicked,
            ),
            SettingCategory(
              title: "문제 개수",
              details: sProblemCount,
              clicked: problemCountClicked,
            ),

          ],
        )
      )
    );
  }
}

class SettingCategory extends StatefulWidget {
  SettingCategory({@required String title, List<String> details, int clicked}):
    this._title = title, this._details = details, this._clicked = clicked;
  
  final String _title;
  List<String> _details = [];
  int _clicked;
  @override
  _SettingCategoryState createState() => _SettingCategoryState();
}

class _SettingCategoryState extends State<SettingCategory> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.45),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(3, 3), 
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget._title
          ),
          for(int i=0;i<widget._details.length;i++)         
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget._details[i]),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54),
                  ),
                  child: i+1 == widget._clicked
                  ? Container(
                    child: SvgPicture.asset(
                      'assets/images/main_solve.svg',
                    ),
                  )
                  : GestureDetector(
                    onTap: ()=>setState(()=>(widget._clicked = i + 1)),
                  )
                )
              ],
            ),
          

        ]
      )
    );
  }
}