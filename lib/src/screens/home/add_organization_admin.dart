import 'package:flutter/material.dart';

class AddOrganizationAdmin extends StatelessWidget {
  static const routeName = '/add-organization-admin';

  const AddOrganizationAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Organization Admin'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Add Organization Admin'),
            ElevatedButton(
              onPressed: () =>
                  Navigator.popUntil(context, (route) => route.isFirst),
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}
