import 'package:flutter/material.dart';
import 'package:flutter_getx3/controller/page4Controller.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  Page4({super.key});

  final Page4controller controllerPage4 = Get.put(Page4controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text("Page4")),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            GetBuilder<Page4controller>(
              init: Page4controller(),
              builder:
                  (controller) => Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${controller.counter1}",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "+",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${controller.counter2}",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "=",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${controller.sumCounter}",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
            ),
            Row(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    controllerPage4.addNumb1();
                  },
                  child: Text(
                    "Counter1++",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    controllerPage4.addNumb2();
                  },
                  child: Text(
                    "Counter2++",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
