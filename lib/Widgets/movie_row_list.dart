import 'package:flutter/material.dart';
import 'package:netflix_clone/constant.dart';

class MovieRowList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My List",
              style: KtextTime,
            ),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Rate",
              style: KtextTime,
            )
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.share,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Share",
              style: KtextTime,
            ),
          ],
        )
      ],
    );
  }
}
