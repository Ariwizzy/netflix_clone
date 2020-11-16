import 'package:flutter/material.dart';
import 'package:netflix_clone/Screens/movie_screen.dart';
import 'package:netflix_clone/modules/preview_dummy_data.dart';

class Preview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final previewDetail = Previews().previewsNames;
    return Container(
      color: Colors.black,
      height: 150,
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: previewDetail.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieScreen(
                          imgUrl: previewDetail[index].imgUrl,
                          starring: previewDetail[index].starring,
                          director: previewDetail[index].director,
                          description: previewDetail[index].description,
                          date: previewDetail[index].date,
                        ),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(previewDetail[index].imgUrl),
                    radius: 70,
                    child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Text(
                          previewDetail[index].tittle,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            );
          }),
    );
  }
}
