import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class KshitijProfile extends StatelessWidget {
  var background = Color(0xff202026);
  var card_background = Color(0xff31313a);
  static var skill_color = Color(0xfff19104);
  static var title_white = Color(0xffe0e0e2);
  var height;

  var sized_box_width = 15.0;
  var name_style =
      TextStyle(color: title_white, fontSize: 25.0, fontFamily: 'Far');
  var developer_style = TextStyle(
      color: skill_color,
      fontSize: 15.0,
      fontFamily: 'IranSans',
      fontWeight: FontWeight.w300);
  var contact_me_style = TextStyle(
      fontSize: 15.0,
      color: title_white,
      fontFamily: 'IranSans',
      fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;

    var rowSocial = Container(
      margin: const EdgeInsets.only(top: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.logo_stackoverflow,
                color: Color(0xff727282),
              )),
          SizedBox(
            width: sized_box_width,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.logo_github,
                color: Color(0xff727282),
              )),
          SizedBox(
            width: sized_box_width,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.logo_linkedin,
                color: Color(0xff727282),
              )),
          SizedBox(
            width: sized_box_width,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.logo_twitter,
                color: Color(0xff727282),
              )),
          SizedBox(
            width: sized_box_width,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.logo_instagram,
                color: Color(0xff727282),
              )),
        ],
      ),
    );

    _launchURL(var url) async {
      // if (await canLaunch(url)) {
      //   await launch(url);
      // } else {
      //   throw 'Could not launch $url';
      // }
    }

    var circleContainerImg = Container(
      width: 134.0,
      height: 134.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://avatars.githubusercontent.com/u/44705390?v=4'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 30,
            color: Color(0xffa7a7b3),
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(67.0)),
      ),
    );

    var col = Column(
      children: <Widget>[
        ClipPath(
          clipper: ImageBackground(),
          child: Container(
              height: (height / 2) - 45,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: NetworkImage('images/bg.jpg'), fit: BoxFit.fill))),
        ),
        Container(
          margin: const EdgeInsets.only(top: 65.0),
          //  width: 200.0,
          child: Text(
            'Kshitij',
            style: name_style,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 10.0),
            //  width: 200.0,
            child: Text('Flutter Developer', style: developer_style)),
        rowSocial,

        //divider
        Container(
          margin: const EdgeInsets.only(top: 35.0, left: 5.0),
          height: 0.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.topRight,
                  colors: [card_background, title_white])),
        ),
        // bottom section
        Container(
          margin: const EdgeInsets.only(top: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: const [
                    Icon(
                      Ionicons.eye,
                      color: Color(0xff727282),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "View Resume",
                      style: TextStyle(
                        color: Color(0xff727282),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  _launchURL('');
                },
              ),
              InkWell(
                child: Row(
                  children: const [
                    Icon(
                      Ionicons.logo_whatsapp,
                      color: Color(0xff727282),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Connect with me",
                      style: TextStyle(
                        color: Color(0xff727282),
                      ),
                    )
                  ],
                ),
                onTap: () {
                  _launchURL('');
                },
              ),
            ],
          ),
        )
      ],
    );
    return Scaffold(
      body: Container(
        color: background,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Center(
                child: Container(
                    constraints: const BoxConstraints(maxHeight: 800),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: card_background,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 30,
                            color: Color(0xff40404b),
                          )
                        ]),
                    height: height - 80,
                    width: 480.0,
                    child: Stack(
                      children: <Widget>[
                        col,
                        Container(
                          margin: const EdgeInsets.only(top: 35.0),
                          child: Center(
                            child: Container(
                              margin: const EdgeInsets.all(3.0),
                              child: circleContainerImg,
                            ),
                          ),
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}

class ImageBackground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final Path path = Path();

    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height - 35.0);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 35.0);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip

    return true;
  }
}
