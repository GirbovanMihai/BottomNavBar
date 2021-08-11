import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  static const routeName = '/favorites';

  FavoritesScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Favorites"),
      ),
    );
  }
}
