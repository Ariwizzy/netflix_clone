import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/bottom_bar.dart';
import 'package:netflix_clone/Widgets/more_sceen_row.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MoreScreenRow(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
