import 'package:flutter/material.dart';
import 'package:flutter_getx3/controller/page1Controller.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
   Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text("Page2")),
      body: Center(child: ListView(shrinkWrap: true,children: [
        GetBuilder<Page1controller>(
          init: Page1controller(),
                  builder: (controller) {
                    return Center(
                      child: Text(
                        "${controller.counter}",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
      ])),
    );
  }
}