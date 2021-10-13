import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KhushbooProfile extends StatelessWidget {
  const KhushbooProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double containerHeight = mediaQuery.height - 200;
    double containerWidth = mediaQuery.width;
    double imagePosition = containerHeight - 80;
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Stack(
          children: [
            Positioned(
              bottom: (mediaQuery.height - containerHeight) / 4,
              child: Container(
                padding: const EdgeInsets.only(left: 28, right: 28),
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 16,
                        offset: Offset(0, 4),
                        color: Colors.black54)
                  ],
                ),
                child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: imagePosition,
                        child: Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.amber,
                              border: Border.all(
                                  color: Colors.amber,
                                  width: 10,
                                  style: BorderStyle.solid),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 16,
                                    offset: Offset(0, 4),
                                    color: Colors.black54)
                              ]),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("images/khushboo.png"),
                            maxRadius: 80,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Khushboo Arora',
                              style: TextStyle(
                                  fontSize: 28, fontFamily: "Pacifico"),
                            ),
                            const Text(
                              "Amroha, India",
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
                              "Student at Kamla Nehru Institute of Technology",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black45,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "SKILLS",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            ...addSkills('Flutter', 0.2, Colors.purple),
                            ...addSkills('C++', 0.9, Colors.red),
                            ...addSkills('DSA', 0.9, Colors.green),
                            ...addSkills('Web Development', 0.5, Colors.amber),
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
  Widget text = Card(
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black54,
          letterSpacing: 2.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    ),
  );
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
