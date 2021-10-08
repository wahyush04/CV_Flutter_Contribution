import 'package:flutter/material.dart';

class RudratejProfile extends StatefulWidget {
  const RudratejProfile({Key? key}) : super(key: key);

  @override
  _RudratejProfileState createState() => _RudratejProfileState();
}

class _RudratejProfileState extends State<RudratejProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1419693199216418821/4DIE1mIs_400x400.jpg"),
            ),
            Text(
              'Rudratej Chilkewar',
              style: TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.white,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  '+91 7249266212',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  'rudratejchilkewar@gmail.com',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
