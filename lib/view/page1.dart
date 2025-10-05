import 'package:flutter/material.dart';
import 'package:flutter_getx3/controller/page1Controller.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});
  Page1controller controller = Get.put(Page1controller(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text("Page1")),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    controller.addCounter();
                  },
                  icon: Icon(Icons.add, size: 36),
                ),
                GetBuilder<Page1controller>(
                  builder: (controller) {
                    return Text(
                      "${controller.counter}",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {
                    controller.removeCounter();
                  },
                  icon: Icon(Icons.remove, size: 36),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
