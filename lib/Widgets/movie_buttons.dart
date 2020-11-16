import 'package:flutter/material.dart';

class MovieButtons extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color color, color2;
  MovieButtons(this.text, this.iconData, this.color, this.color2);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      color: color,
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            color: color2,
            size: 30,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color2),
          )
        ],
      ),
    );
  }
}
