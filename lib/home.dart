import 'package:cv_flutter_contribution/pranav_profile.dart';
import 'package:cv_flutter_contribution/wahyu_profile.dart';
import 'package:flutter/material.dart';

import 'hilmykun_profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile List'),
      ),
      body: ListView(
        children: <Widget>[
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
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PranavProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("Pranav's Profile"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HilmyProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("Hilmy Profile"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
