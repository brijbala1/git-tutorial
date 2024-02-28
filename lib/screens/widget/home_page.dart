import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:imageswidget/screens/widget/screen_one.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX tutorial"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 6, right: 6),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("GetX Dialog Alert"),
                subtitle: Text("Getx is good for Flutter"),
                leading: Icon(Icons.spa),
                mouseCursor: MouseCursor.defer,
                onTap: () {
                  Get.defaultDialog(
                      title: "Change Data",
                      titlePadding: EdgeInsets.only(top: 20),
                      middleText: "You are sure you want to change data?",
                      contentPadding: EdgeInsets.all(20),
                      textConfirm: 'Yes',
                      textCancel: 'Cancel');
                  /*confirm: TextButton(
                        child: Text("OK"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      cancel: TextButton(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ));*/
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                title: Text("Theme change"),
                subtitle: Text("Please change theme using Getx"),
                leading: Icon(Icons.swap_horizontal_circle_outlined),
                onTap: () {
                  Get.bottomSheet(Container(
                    color: Colors.blueGrey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                            title: Text("Light Theme"),
                            subtitle: Text(
                                "please select to change app in light theme"),
                            leading: Icon(Icons.light_mode),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Navigator.pop(context);
                            }),
                        ListTile(
                          title: Text("Dark Theme"),
                          subtitle: Text(
                              "please select to change app in light theme"),
                          leading: Icon(Icons.dark_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ));
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.to(ScreenOne());
          Get.snackbar('Hello', "How's you...",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.black,
              colorText: Colors.white,
              icon: Icon(
                Icons.spa_sharp,
                color: Colors.white,
              ),
              duration: Duration(seconds: 2),
              /*mainButton: TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    "Click me",
                    style: TextStyle(color: Colors.white),
                  ))*/
          );
          Get.toNamed("/screenOne",arguments: {
            "name":"Brij Sharma",
            "profile":"Flutter Developer"
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
