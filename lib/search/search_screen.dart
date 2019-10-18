import 'package:champ_app/search/header.dart';
import 'package:champ_app/search/popular_sport.dart';
import 'package:champ_app/search/search_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SearchScreenState();
  }

}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SearchHeader(),
            SearchForm(),
            PopularSport()
          ],
        ),
      ),
    );
  }
}