import 'package:flutter/material.dart';
import 'package:flutter_getx3/controller/page5Controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text("Home")),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page1");
              },
              child: Text("Page1 (GetBuilder Counter + [Permanent dependency])"),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page2");
              },
              child: Text("Page2 using (Page1 Counter [controllerPage1])"),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page3");
              },
              child: Text("Page3 (GetX Double Counter)"),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page4");
              },
              child: Text("Page4 (GetBuilder Double Counter)"),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page5");
              },
              child: Text("Page5 (Get.find + Get.lazyPut Counter)"),
            ),
          ],
        ),
      ),
    );
  }
}
