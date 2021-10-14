// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DavidProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: const Alignment(0.0, 2.5),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/david.JPG'),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            const Text(
              "David Geri Pradipta Riadi",
              style: TextStyle(fontSize: 25.0, color: Colors.blueGrey, letterSpacing: 2.0, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
              "Mataram, NTB",
              style: TextStyle(fontSize: 18.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Text(
              "Student at Bumigora University",
              style: TextStyle(fontSize: 15.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.w300),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10),
            // ignore: prefer_const_constructors
            Card(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                elevation: 2.0,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    child: Text(
                      "Skill",
                      style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.w300),
                    ))),
            SizedBox(height: 15),
            Text(
              "Dart",
              style: TextStyle(fontSize: 18.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.w300),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return LinearProgressIndicator(value: 0.2);
                      })
                    ],
                  )),
            ),
            SizedBox(height: 5),
            Text(
              "JAVA",
              style: TextStyle(fontSize: 18.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.w300),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return LinearProgressIndicator(value: 0.4);
                      })
                    ],
                  )),
            ),
            SizedBox(height: 5),
            Text(
              "PHP",
              style: TextStyle(fontSize: 18.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.w300),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return LinearProgressIndicator(value: 0.5);
                      })
                    ],
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
