import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShadowBox extends StatelessWidget {
  ShadowBox(
    {double size, 
    String title, 
    String image,
    Color color,
    Widget widget}
  ): this._size = size, this._title = title, this._image = image, this._color = color, this._widget = widget;

  final double _size;
  final String _title;
  final String _image;
  final Color _color;
  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context)=>_widget
        )
      ),
      child: Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.35),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(3, 3), 
            ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              _image,
              width: _size * 0.6,
              height: _size * 0.6,
            ),
            SizedBox(height: 5,),
            Text(_title)
          ],
        ),
      )
    );
  }
}

