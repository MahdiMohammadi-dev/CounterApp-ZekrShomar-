import 'package:get/get.dart';

class MyModel extends GetxController {
  Rx<String> namezekr = Rx<String>('الله اکبر');
  Rx<String> alhamdolelah = Rx<String>('الحمدلله');
  Rx<String> sobhanalah = Rx<String>('سبحان الله');
  Rx<bool> fisrtstate = Rx<bool>(true);
  Rx<bool> secondstate = Rx<bool>(false);
  Rx<bool> thirdstate = Rx<bool>(false);
  Rx<int> counter = Rx<int>(0);

  reset() {
    counter.value = 0;
    namezekr.value = 'الله و اکبر';
  }

  updatenamezekr() {
    for (int i = 0; i < 100; i++) {
      counter.value++;
      if (counter.value > 34) {
        fisrtstate.value = false;
        namezekr.value = alhamdolelah.value;
        counter.value = 0;
        secondstate.value = true;
      }
      if (counter.value > 33 && secondstate.value == true) {
        namezekr.value = sobhanalah.value;
        thirdstate.value = true;
        counter.value = 0;
      }
    }
    if (namezekr == sobhanalah.value &&
        counter.value > 33 &&
        secondstate.value == true) {
      namezekr.value = 'الله و اکبر';
      counter.value == 0;
    }
  }
}
