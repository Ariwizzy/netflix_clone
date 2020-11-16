import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 50,
      child: TextField(
        style: TextStyle(color: Colors.grey[300]),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            fillColor: Colors.grey[900],
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            suffixIcon: Icon(
              Icons.keyboard_voice,
              color: Colors.grey[500],
            ),
            hintStyle: TextStyle(
                color: Colors.grey[700], fontSize: 15, letterSpacing: 0.3),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[500],
            ),
            hintText: "Search for a programme, film, genre,etc"),
      ),
    );
  }
}
