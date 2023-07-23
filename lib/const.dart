import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyColor {
  static const Color color1 = Color.fromARGB(255, 33, 11, 41);
  static const Color color2 = Color.fromARGB(255, 24, 32, 111);

  static const LinearGradient mygradient = LinearGradient(
    colors: [color1, color2],
    begin: Alignment.topCenter,
  );
}

class DaysZekr extends GetxController {
  static Rx<String> shanbe = Rx<String>('یا رب العالمین');
  static Rx<String> yekshanbe = Rx<String>('یا ذالجلال والاکرام');
  static Rx<String> doshanbe = Rx<String>('یا قاضی الحاجات');
  static Rx<String> seshanbe = Rx<String>('یا ارحم الراحمین');
  static Rx<String> charshanbe = Rx<String>('یا حی یا قیوم');
  static Rx<String> panjshanbe =
      Rx<String>('لا اله الا الله الملک الحق المبین');
  static Rx<String> jome = Rx<String>('لا اله الا الله الملک الحق المبین');
  Rx<String> zekr = Rx<String>('تست');
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    setzekrday();
  }

  setzekrday() {
    var now = DateTime.now();
    var weekday = now.weekday;
    print(weekday);

    if (weekday > 7) {
      zekr.value == 1;
    }

    if (weekday == 1) {
      zekr.value = DaysZekr.shanbe.value;
    }
    if (weekday == 2) {
      zekr.value = DaysZekr.yekshanbe.value;
    }
    if (weekday == 3) {
      zekr.value = DaysZekr.doshanbe.value;
    }
    if (weekday == 4) {
      zekr.value = DaysZekr.seshanbe.value;
    }
    if (weekday == 5) {
      zekr.value = DaysZekr.charshanbe.value;
    }
    if (weekday == 6) {
      zekr.value = DaysZekr.panjshanbe.value;
    }
    if (weekday == 7) {
      zekr.value = DaysZekr.jome.value;
    }

    update();
  }
}
