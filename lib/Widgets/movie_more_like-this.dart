import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/modules/search_screen_data.dart';

class MoreLikeThis extends StatelessWidget {
  final search = SearchDatas().searchResult;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.9,
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: search.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 0.6),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
              child: Image.network(
                search[index].imgUrl,
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
