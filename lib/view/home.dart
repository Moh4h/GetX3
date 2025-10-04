import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              child: Text("Page1"),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page2");
              },
              child: Text("Page2"),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page3");
              },
              child: Text("Page3"),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.toNamed("/Page4");
              },
              child: Text("Page4"),
            ),
          ],
        ),
      ),
    );
  }
}
