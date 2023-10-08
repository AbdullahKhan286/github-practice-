import 'package:get/get.dart';

class counter extends GetxController{
  RxBool x = false.obs;
  void SetOpacity(bool val){
    x.value = val;
  }
}