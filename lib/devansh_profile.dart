import 'package:cv_flutter_contribution/controllers/devansh_profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DevanshProfile extends StatefulWidget {
  const DevanshProfile({Key? key}) : super(key: key);

  @override
  _DevanshProfileState createState() => _DevanshProfileState();
}

class _DevanshProfileState extends State<DevanshProfile> {
  @override
  Widget build(BuildContext context) {
    void _launchURL(String _url) async => await canLaunch(_url)
        ? await launch(
            _url,
            // forceWebView: false,
            forceSafariVC: false,
          )
        : throw 'Could not launch $_url';
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Obx(
      () {
        return Scaffold(
          backgroundColor: devanshProfileController.backgroundColor.value,
          appBar: AppBar(
            backgroundColor: devanshProfileController.appBarColor.value,
            titleTextStyle: TextStyle(
                color: devanshProfileController.textColor.value,
                fontSize: 21.0),
            iconTheme: IconThemeData(
              color: devanshProfileController.textColor.value,
            ),
            title: const Text("Devansh's Profile"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    devanshProfileController.isDark.value =
                        !devanshProfileController.isDark.value;
                    devanshProfileController.setTheme();
                  },
                  child: FaIcon(
                    devanshProfileController.isDark.value
                        ? FontAwesomeIcons.solidLightbulb
                        : FontAwesomeIcons.lightbulb,
                  ),
                ),
              )
            ],
          ),
          body: SizedBox(
            height: h,
            width: w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Hero(
                    tag: 'devansh',
                    child: Container(
                      height: 165.0,
                      width: 165.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/devansh.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Devansh Karia",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: devanshProfileController.textColor.value,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "devansh88karia@gmail.com",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: devanshProfileController.textColor.value,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: w * 0.92,
                    height: h * 0.24,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _launchURL(
                                    'https://www.linkedin.com/in/devansh-karia/');
                              },
                              child: Container(
                                height: h * 0.09,
                                width: w * 0.42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.blue,
                                ),
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: const [
                                    FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      size: 25.0,
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Connect on LinkedIn",
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchURL(
                                    'mailto:devansh88karia@gmail.com?subject=Hello%20Devansh&body=Hello%20Devansh');
                              },
                              child: Container(
                                height: h * 0.09,
                                width: w * 0.42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.red,
                                    width: 3.5,
                                  ),
                                ),
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: const [
                                    FaIcon(FontAwesomeIcons.envelope,
                                        size: 25.0, color: Colors.black),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Add me to Gmail",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _launchURL(
                                    'https://www.instagram.com/code_vansh/');
                              },
                              child: Container(
                                height: h * 0.09,
                                width: w * 0.42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff405de6),
                                      Color(0xff5851db),
                                      Color(0xff833ab4),
                                      Color(0xffc13584),
                                      Color(0xffe1306c),
                                      Color(0xfffd1d1d),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                ),
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: const [
                                    FaIcon(FontAwesomeIcons.instagram,
                                        size: 25.0, color: Colors.white),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Follow on Instagram",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchURL(
                                    'https://www.github.com/devanshkaria88');
                              },
                              child: Container(
                                height: h * 0.09,
                                width: w * 0.42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xff333333),
                                    border: Border.all(
                                        width: 2.0, color: Colors.white)),
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: const [
                                    FaIcon(
                                      FontAwesomeIcons.github,
                                      size: 25.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Checkout Github",
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Skills",
                    style: TextStyle(
                        color: devanshProfileController.textColor.value,
                        fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: w,
                    child: Center(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: devanshProfileController.appBarColor.value,
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Text(
                              'Flutter',
                              style: TextStyle(
                                  color:
                                      devanshProfileController.textColor.value,
                                  fontSize: 15.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: devanshProfileController.appBarColor.value,
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Text(
                              'Firebase',
                              style: TextStyle(
                                  color:
                                      devanshProfileController.textColor.value,
                                  fontSize: 15.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: devanshProfileController.appBarColor.value,
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Text(
                              'Dart',
                              style: TextStyle(
                                  color:
                                      devanshProfileController.textColor.value,
                                  fontSize: 15.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: devanshProfileController.appBarColor.value,
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Text(
                              'Python',
                              style: TextStyle(
                                  color:
                                      devanshProfileController.textColor.value,
                                  fontSize: 15.0),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: devanshProfileController.appBarColor.value,
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: Text(
                              'Figma',
                              style: TextStyle(
                                  color:
                                      devanshProfileController.textColor.value,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
