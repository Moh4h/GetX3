import 'package:get/get.dart';

class Page3controller extends GetxController{

RxInt counter1=0.obs;
  RxInt counter2=0.obs;
  
  void addNumb1(){
    counter1++;
   
  } 
  void addNumb2(){
    counter2++;
    
  } 
  int get sumCounter => counter1.value+counter2.value;
  
}