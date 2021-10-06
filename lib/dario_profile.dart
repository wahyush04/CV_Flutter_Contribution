import 'package:flutter/material.dart';

class DarioProfile extends StatelessWidget {
  const DarioProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: const Alignment(0.0, 2.5),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/dario.png'),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Dario Don Kir",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Piano di Sorrento, Italy",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Student at University of Salerno",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            Card(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                elevation: 2.0,
                child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    child: Text(
                      "Skill",
                      style: TextStyle(
                          letterSpacing: 2.0, fontWeight: FontWeight.w300),
                    ))),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Dart",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return LinearProgressIndicator(
                          color: Colors.red,
                          backgroundColor: Colors.red[100],
                          value: 0.9,
                        );
                      })
                    ],
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "JAVA",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return LinearProgressIndicator(
                          value: 0.7,
                          color: Colors.green,
                          backgroundColor: Colors.green[100],
                        );
                      })
                    ],
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "PHP",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return LinearProgressIndicator(
                          value: 0.6,
                          color: Colors.yellow,
                          backgroundColor: Colors.yellow[100],
                        );
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
