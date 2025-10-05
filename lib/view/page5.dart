import 'package:flutter/material.dart';
import 'package:flutter_getx3/controller/page4Controller.dart';
import 'package:flutter_getx3/controller/page5Controller.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  Page5({super.key});
   final x=Get.lazyPut(() => Page5controller());
final controller=Get.find<Page5controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text("Page5")),
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
                GetBuilder<Page5controller>(
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
