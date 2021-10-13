import 'package:cv_flutter_contribution/aman_profile.dart';
import 'package:cv_flutter_contribution/dario_profile.dart';
import 'package:cv_flutter_contribution/itsmurphy_profile.dart';
import 'package:cv_flutter_contribution/jayadi.dart';
import 'package:cv_flutter_contribution/pranav_profile.dart';
import 'package:cv_flutter_contribution/wahyu_profile.dart';
import 'package:flutter/material.dart';
import 'package:cv_flutter_contribution/david.dart';
import 'package:cv_flutter_contribution/lana_profile.dart';
import 'package:cv_flutter_contribution/ayush_profile.dart';

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
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JayadiProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("Jayadi"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DavidProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("David"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LanaProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("Lana"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DarioProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("Dario"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AmanProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("Aman"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ItsMurphyProfile()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.flutter_dash_rounded,
                  color: Colors.teal,
                ),
                title: Text("Its Murphy's Profile"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfileAyush()));
            },
            child: const Card(
              child: ListTile(
                leading: Icon(
                  Icons.android_rounded,
                  color: Colors.teal,
                ),
                title: Text("Ayush"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
