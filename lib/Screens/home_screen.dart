import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/bottom_bar.dart';
import 'package:netflix_clone/Widgets/my_list.dart';
import 'package:netflix_clone/Widgets/previews.dart';
import 'package:netflix_clone/constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Container conText(String _text) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 6),
      child: Text(
        _text,
        style: TextStyle(
            color: Colors.white, fontSize: 23, fontWeight: FontWeight.w500),
      ),
    );
  }

  Container conCircle() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 5,
      width: 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = 5;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.37,
                  width: double.infinity,
                  child: Image.network(
                    "https://plushng.com/wp-content/uploads/2020/09/Enola-Holmes.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT9FIxaNkBPBsbi8HaWq7hyRmCSItGbB1nSag&usqp=CAU",
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        "Series",
                        style: KTextStyle,
                      ),
                      Text(
                        "Films",
                        style: KTextStyle,
                      ),
                      Text(
                        "My List",
                        style: KTextStyle,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black87,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.55,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Lavish",
                              style: KmovieTitle,
                            ),
                            conCircle(),
                            Text(
                              "Exciting",
                              style: KmovieTitle,
                            ),
                            conCircle(),
                            Text(
                              "Nice movie",
                              style: KmovieTitle,
                            ),
                            conCircle(),
                            Text(
                              "Royalty",
                              style: KmovieTitle,
                            ),
                            conCircle(),
                            Text(
                              "Drama",
                              style: KmovieTitle,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                SizedBox(
                                  height: height,
                                ),
                                Text(
                                  "My List",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            padding: EdgeInsets.only(
                                top: 6, bottom: 6, left: 11, right: 13),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.play_arrow),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 60),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                SizedBox(
                                  height: height,
                                ),
                                Text(
                                  "info",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            conText("Preview"),
            Preview(),
            conText('My List'),
            MyList(),
            conText("Trending Now"),
            MyList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
