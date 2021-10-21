import 'package:cv_flutter_contribution/aman_profile.dart';
import 'package:cv_flutter_contribution/ayush_profile.dart';
import 'package:cv_flutter_contribution/danushan.dart';
import 'package:cv_flutter_contribution/dario_profile.dart';
import 'package:cv_flutter_contribution/david.dart';
import 'package:cv_flutter_contribution/hilmykun_profile.dart';
import 'package:cv_flutter_contribution/home.dart';
import 'package:cv_flutter_contribution/itsmurphy_profile.dart';
import 'package:cv_flutter_contribution/jayadi.dart';
import 'package:cv_flutter_contribution/khushboo_profile.dart';
import 'package:cv_flutter_contribution/lana_profile.dart';
import 'package:cv_flutter_contribution/pranav_profile.dart';
import 'package:cv_flutter_contribution/wahyu_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
