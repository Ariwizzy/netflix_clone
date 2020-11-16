import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/bottom_bar.dart';
import 'package:netflix_clone/Widgets/text_field.dart';
import 'package:netflix_clone/modules/search_screen_data.dart';

class SearchBar extends StatelessWidget {
  final search = SearchDatas().searchResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            TextForm(),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(
                "Popular Searches",
                style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 1000,
              child: ListView.builder(
                itemCount: search.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        color: Colors.grey[900],
                        height: 100,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 2.6,
                              child: Image.network(
                                search[index].imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 12,
                            ),
                            Expanded(
                              child: Text(
                                search[index].tittle,
                                style: TextStyle(color: Colors.grey[300]),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            Expanded(
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
