import 'package:flutter/material.dart';

class HilmyProfile extends StatelessWidget {
  const HilmyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/hilmy.jpg'),
                ),
               const Text(
                  'Muhammad Hilmy Al Jauzy',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(
                  height: 50
                ),
               const Text('21 Years Old'),
                const SizedBox(
                  height: 10                ),
                Text(
                  'Mobile Developers And UI/UX Design',
                  style: TextStyle(
                    color: Colors.teal[100],
                    fontFamily: 'Roboto',
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               const SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                    const  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading:const Icon(
                      Icons.phone,
                      color: Colors.purple
                    ),
                    title: Text(
                      '+6288213806514',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0
                  ),
                  child: ListTile(
                    leading:const Icon(
                      Icons.email,
                      color: Colors.teal
                    ),
                    title: Text(
                      'sucifebryani550@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0
                  ),
                  child: ListTile(
                    leading:const Icon(
                      Icons.work,
                      color: Colors.purple
                    ),
                    title: Text(
                      'Im Freelance In UpWork',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
