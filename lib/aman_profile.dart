import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmanProfile extends StatelessWidget {
  const AmanProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double containerHeight = mediaQuery.height - 200;
    double containerWidth = mediaQuery.width;
    double imagePosition = containerHeight - 80;
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 28, right: 28),
                height: containerHeight,
                width: containerWidth,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                  ),
                ),
                child: Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
                  Positioned(
                    bottom: imagePosition,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("images/aman.jpg"),
                      maxRadius: 80,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Aman Srivastava', style: TextStyle(fontSize: 28, fontFamily: "Pacifico")),
                        const Text(
                          "Varanasi, India",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black45,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Student at Kamla Nehru Institute of Technology",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(height: 15),
                        const Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "SKILLS",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ...addSkills('Flutter', 0.7, Colors.purple),
                        ...addSkills('C++', 0.5, Colors.red),
                        ...addSkills('Angular', 0.6, Colors.green),
                        ...addSkills('Kotlin', 0.3, Colors.amber),
                        ...addSkills('Photoshop', 0.4, Colors.indigo)
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container socialHandle(Image image, Color color) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: image,
  );
}

List<Widget> addSkills(String name, double value, Color color) {
  Widget text = Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black54,
          letterSpacing: 2.0,
          fontWeight: FontWeight.w300,
        ),
      ));
  Widget progress = Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        child: LinearProgressIndicator(
          value: value,
          color: color,
        ),
      ));

  return [text, progress];
}
