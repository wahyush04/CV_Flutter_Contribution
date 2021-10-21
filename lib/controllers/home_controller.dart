import 'package:cv_flutter_contribution/aman_profile.dart';
import 'package:cv_flutter_contribution/ayush_profile.dart';
import 'package:cv_flutter_contribution/danushan.dart';
import 'package:cv_flutter_contribution/dario_profile.dart';
import 'package:cv_flutter_contribution/david.dart';
import 'package:cv_flutter_contribution/devansh_profile.dart';
import 'package:cv_flutter_contribution/hilmykun_profile.dart';
import 'package:cv_flutter_contribution/itsmurphy_profile.dart';
import 'package:cv_flutter_contribution/jayadi.dart';
import 'package:cv_flutter_contribution/khushboo_profile.dart';
import 'package:cv_flutter_contribution/lana_profile.dart';
import 'package:cv_flutter_contribution/nimrat_profile.dart';
import 'package:cv_flutter_contribution/pranav_profile.dart';
import 'package:cv_flutter_contribution/wahyu_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

HomeController homeController = HomeController();


class HomeController extends GetxController{


  List profilesMapList = [
    {
      'name' : "Wahyu",
      'profileWidget' : WahyuProfile(),
      'leadingWidget' : const FlutterLogo(),
    },
    {
      'name' : "Pranav",
      'profileWidget' : PranavProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Hilmy",
      'profileWidget' : HilmyProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Jayadi",
      'profileWidget' : JayadiProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "David",
      'profileWidget' : DavidProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Lana",
      'profileWidget' : LanaProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Dario",
      'profileWidget' : DarioProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Aman",
      'profileWidget' : AmanProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Its Murphy",
      'profileWidget' : ItsMurphyProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Ayush",
      'profileWidget' : ProfileAyush(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Khushboo",
      'profileWidget' : KhushbooProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Danushah",
      'profileWidget' : dhanuprofile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
    {
      'name' : "Devansh",
      'profileWidget' : DevanshProfile(),
      'leadingWidget' : const Hero(
        tag: 'devansh',
        child: CircleAvatar(
          backgroundImage: AssetImage('images/devansh.jpeg'),
        ),
      ),
    },
    {
      'name' : "Nimrat",
      'profileWidget' : NimratProfile(),
      'leadingWidget' : const Icon(
        Icons.android_rounded,
        color: Colors.teal,
      ),
    },
  ].obs;


}