// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NimratProfile extends StatelessWidget {
  const NimratProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              "CV",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Nimrat",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.green),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Indian Institute of Information Technology, Bhopal",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Skills",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.green),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Dart",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Python", style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
                Text("Java", style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
                Text("React", style: TextStyle(color: Colors.white))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Framework",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Flutter",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tools",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "AndroidStudio",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("VSCode", style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
                Text("Rive", style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
                Text("Jupyter", style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
                Text("Git", style: TextStyle(color: Colors.white)),
                SizedBox(
                  width: 10,
                ),
                Text("Github", style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
