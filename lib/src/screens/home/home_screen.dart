import 'package:flutter/material.dart';

import 'add_organization_company.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  HomeScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context, AddOrganizationCompany.routeName),
              child: Text('Add Organization'),
            )
          ],
        ),
      ),
    );
  }
}
