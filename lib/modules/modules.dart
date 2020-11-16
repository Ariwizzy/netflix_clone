import 'package:flutter/material.dart';

class MyListData {
  final String imgUrl, tittle, description, starring, director, date;
  MyListData(
      {@required this.imgUrl,
      @required this.tittle,
      @required this.description,
      @required this.starring,
      @required this.director,
      @required this.date});
}

class NetflixAccountName {
  final String names, imgUrl;
  NetflixAccountName({
    @required this.names,
    this.imgUrl,
  });
}

class PreviewsData {
  final String imgUrl, tittle, description, starring, director, date;
  PreviewsData(
      {@required this.imgUrl,
      @required this.tittle,
      @required this.description,
      @required this.starring,
      @required this.director,
      @required this.date});
}

class SearchRequest {
  final String tittle, imgUrl;
  SearchRequest({this.tittle, this.imgUrl});
}
