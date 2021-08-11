import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search';

  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Search"),
      ),
    );
  }
}
