import 'package:cv_flutter_contribution/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile List'),
      ),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: homeController.profilesMapList.length,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => homeController
                              .profilesMapList[i]['profileWidget']));
                },
                child: Card(
                  child: ListTile(
                    leading: homeController.profilesMapList[i]['leadingWidget'],
                    title: Text(
                        "${homeController.profilesMapList[i]['name']}'s Profile"),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
