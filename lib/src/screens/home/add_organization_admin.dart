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
              onPressed: () {
                _showDialog(context);
              },
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('CONFIRMATIONS'),
          content: const Text(' You just created a new organization.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('CONFIRM'),
            )
          ],
        );
      },
    );
  }
}
