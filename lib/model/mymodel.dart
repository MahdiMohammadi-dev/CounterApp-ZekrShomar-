import 'package:get/get.dart';

class MyModel extends GetxController {
  Rx<String> namezekr = Rx<String>('الله اکبر');
  Rx<String> alhamdolelah = Rx<String>('الحمدلله');
  Rx<String> sobhanalah = Rx<String>('سبحان الله');
  Rx<String> mainzekr = Rx<String>('الله اکبر');
  Rx<bool> fisrtstate = Rx<bool>(true);
  Rx<bool> secondstate = Rx<bool>(false);
  Rx<bool> thirdstate = Rx<bool>(false);
  Rx<int> counter = Rx<int>(0);
  Rx<int> subcounter = Rx<int>(0);

  reset() {
    counter.value = 0;
    namezekr.value = 'الله اکبر';
  }

  updatenamezekr() {
    counter.value++;

    if (fisrtstate.value) {
      if (counter.value > 34) {
        namezekr.value = alhamdolelah.value;
        secondstate.value = true;
        fisrtstate.value = false;
        counter.value = 0;
      }
    } else if (secondstate.value) {
      if (counter.value > 33) {
        namezekr.value = sobhanalah.value;
        thirdstate.value = true;
        secondstate.value = false;
        counter.value = 0;
      }
    } else if (thirdstate.value) {
      if (counter.value > 33) {
        namezekr.value = mainzekr.value;
        thirdstate.value = false;
        counter.value = 0;
        fisrtstate.value = true;
      }
    }
  }
}
