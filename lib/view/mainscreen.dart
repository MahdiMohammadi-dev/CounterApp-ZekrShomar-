import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekrshomar/const.dart';
import 'package:zekrshomar/model/mymodel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DaysZekr zekrha = Get.put(DaysZekr());
    MyModel _mymodel = Get.put(MyModel());
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: MyColor.mygradient),
      ),
      Padding(
        padding: EdgeInsets.only(left: size.width / 3.1, top: size.height / 50),
        child: const Text(
          'ذکر شمار حسنات',
          style: TextStyle(
              fontFamily: 'iransans', fontSize: 24, color: Colors.white),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: size.height / 8, left: size.width / 8, right: size.width / 50),
        child: Container(
          width: size.width / 1.1,
          height: size.height / 9,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width / 1.5, top: 5),
                child: Text(
                  'ذکر روز هفته',
                  style: TextStyle(
                    fontFamily: 'bzar',
                    fontSize: size.height / 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => Padding(
                    padding: EdgeInsets.only(
                      left: size.width / 2.3,
                      top: 2,
                    ),
                    child: Row(
                      children: [
                        Text(
                          zekrha.zekr.value,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            // overflow: TextOverflow.ellipsis,
                            fontFamily: 'bzar',
                            fontSize: size.height / 45,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Obx(
            () => Text(
              _mymodel.namezekr.value,
              style: TextStyle(
                  fontFamily: 'iransans',
                  fontSize: size.height / 30,
                  color: Colors.white),
            ),
          )),
          const SizedBox(
            height: 50,
          ),
          Center(
              child: Obx(
            () => Text(
              _mymodel.counter.value.toString(),
              style: TextStyle(
                  fontFamily: 'iransans',
                  fontSize: size.height / 30,
                  color: Colors.white),
            ),
          )),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              _mymodel.updatenamezekr();
            },
            child: Container(
              width: size.width / 3.5,
              height: size.height / 16,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 5, 24, 131),
                    Color.fromARGB(255, 33, 37, 243)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Center(
                child: Text(
                  'ذکرشمار',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'iransans',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),
    ])));
  }
}
