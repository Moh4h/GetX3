import 'package:flutter/material.dart';
import 'package:flutter_getx3/view/home.dart';
import 'package:flutter_getx3/view/page1.dart';
import 'package:flutter_getx3/view/page2.dart';
import 'package:flutter_getx3/view/page3.dart';
import 'package:flutter_getx3/view/page4.dart';
import 'package:flutter_getx3/view/page5.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:  Home(),
      getPages: [
        GetPage(name: "/Page1", page: () => Page1()),
        GetPage(name: "/Page2", page: () => Page2()),
        GetPage(name: "/Page3", page: () => Page3()),
        GetPage(name: "/Page4", page: () => Page4()),
        GetPage(name: "/Page5", page: () => Page5()),
      ],
    );
  }
}
