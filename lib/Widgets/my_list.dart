import 'package:flutter/material.dart';
import 'package:netflix_clone/Screens/movie_screen.dart';
import 'package:netflix_clone/modules/mylist_dummy_data.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final previewDetails = MyLists().myList;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: previewDetails.length,
        itemBuilder: (context, index) {
          return Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieScreen(
                        date: previewDetails[index].date,
                        description: previewDetails[index].description,
                        director: previewDetails[index].director,
                        imgUrl: previewDetails[index].imgUrl,
                        starring: previewDetails[index].starring,
                      ),
                    ),
                  );
                },
                child: Image.network(previewDetails[index].imgUrl),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
