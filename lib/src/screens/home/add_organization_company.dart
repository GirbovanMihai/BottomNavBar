import 'package:flutter/material.dart';

import 'add_organization_admin.dart';

class AddOrganizationCompany extends StatelessWidget {
  static const routeName = '/add-organization-company';

  const AddOrganizationCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Organization Company'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Add Organization Company'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddOrganizationAdmin()));
                },
                child: Text('Admin Detail'))
          ],
        ),
      ),
    );
  }
}
