import 'package:get/get.dart';

class counter extends GetxController{
  RxInt x= 0.obs;

  void adding(){
    x++;
  }
}