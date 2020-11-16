import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/bottom_bar.dart';
import 'package:netflix_clone/Widgets/movie_buttons.dart';
import 'package:netflix_clone/Widgets/movie_more_like-this.dart';
import 'package:netflix_clone/Widgets/movie_row_list.dart';
import 'package:netflix_clone/constant.dart';

class MovieScreen extends StatelessWidget {
  final String imgUrl, date, description, starring, director;
  MovieScreen(
      {this.imgUrl, this.date, this.director, this.starring, this.description});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 200,
                          child: Center(
                            child: Image.network(imgUrl),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Text(
                                "98% Match",
                                style: TextStyle(
                                    color: Colors.green[600],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              date,
                              style: KTitleText,
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              color: Colors.grey[700],
                              child: Text(
                                "18+",
                                style: KtextTime,
                              ),
                            ),
                            Text(
                              "1h 57m",
                              style: KtextTime,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 70),
                              color: Colors.grey[300],
                              child: Text("HD"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MovieButtons("Play", Icons.play_arrow, Colors.white,
                            Colors.black),
                        SizedBox(
                          height: 10,
                        ),
                        MovieButtons("Download", Icons.arrow_downward,
                            Colors.grey[800], Colors.white),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            description,
                            style: KtextTime,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Starring: ",
                                style: KtextTime,
                              ),
                              Expanded(
                                child: Text(
                                  starring,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: KautorText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 4),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Director:",
                                style: KtextTime,
                              ),
                              Text(
                                director,
                                style: KautorText,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MovieRowList(),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey[500],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 5),
                          color: Colors.red[900],
                          height: 8,
                          width: 130,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "MORE  LIKE THIS",
                              style: KMoreLikeThis,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "TRAILERS & MORE",
                              style: KMoreLikeThis,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  MoreLikeThis(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
