import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Screens/download_screen.dart';
import 'package:netflix_clone/Screens/home_screen.dart';
import 'package:netflix_clone/Screens/more_screen.dart';
import 'package:netflix_clone/Screens/search.dart';

class BottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  BottomBar(this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5),
        color: Color(0xff121212),
        height: 53,
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: Color(0xff676767),
              size: 25,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey[500], fontSize: 10.4),
            )
          ],
        ));
  }
}

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: BottomBar("Home", Icons.home),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SearchBar(),
              ),
            );
          },
          child: BottomBar("Search", Icons.search),
        ),
        BottomBar("Coming Soon", Icons.filter),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DownloadScreen(),
              ),
            );
          },
          child: BottomBar("Downloads", Icons.file_download),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MoreScreen(),
              ),
            );
          },
          child: BottomBar("More", Icons.menu),
        ),
      ],
    );
  }
}
