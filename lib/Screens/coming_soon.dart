import 'package:flutter/material.dart';
import 'package:netflix_clone/Widgets/bottom_bar.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: <Widget>[Image.network("src")],
        );
      }),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
