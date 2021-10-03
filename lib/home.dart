import 'package:cv_flutter_contribution/wahyu_profile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile List'),
      ),
      body: ListView(
        children: < Widget > [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WahyuProfile();
              }));
            },
            child: const Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text("Wahyu's Profile"),
              ),
            ),
          )
        ],
      ),
    );
  }
}