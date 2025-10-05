import 'package:get/get.dart';

class Page5controller extends GetxController {
int counter =0;
void addCounter(){
  counter ++;
  update();
}
void removeCounter(){
  counter --;
  update();
}
void printUpdate(){
  
  update();
}}