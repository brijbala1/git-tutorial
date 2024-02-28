import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imageswidget/screens/widget/home_page.dart';
import 'package:imageswidget/screens/widget/screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Widget Show',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page: ()=>HomePage()),
        GetPage(name: '/screenOne', page: ()=>ScreenOne())
      ],
    );
  }
}
