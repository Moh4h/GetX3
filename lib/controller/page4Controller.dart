import 'package:get/get.dart';

class Page4controller extends GetxController{

  int counter1=0;
  int counter2=0;
  
  void addNumb1(){
    counter1++;
    update();
  } 
  void addNumb2(){
    counter2++;
    update();
  } 
  int get sumCounter => counter1+counter2;
}