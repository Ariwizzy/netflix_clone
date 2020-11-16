import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/bottom_bar.dart';

class DownloadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.error_outline,
              size: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Smart Download",
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 4),
              child: Text(
                "ON",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.mode_edit,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Spacer(),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 7, right: 7),
              margin: EdgeInsets.only(bottom: 25),
              color: Color(0xFF3C3A3B),
              height: 39,
              child: Text(
                "Find More To Download",
                style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
