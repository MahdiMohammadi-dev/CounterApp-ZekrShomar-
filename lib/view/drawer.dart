import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerClass extends StatelessWidget {
  const DrawerClass({super.key});
  @override
  Widget build(BuildContext context) {
    final url = 'https://github.com/MahdiMohammadi-dev/CounterApp-ZekrShomar-';
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'لینک برنامه در گیت هاب',
                style: TextStyle(
                    fontFamily: 'iransans',
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
            ),
            onTap: () async {
              MyLouncherUrl(url);
            },
          ),
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'اشتراک گذاری برنامه',
                style: TextStyle(
                    fontFamily: 'iransans',
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
            ),
            onTap: () async {
              await Share.share('کلیک کن');
            },
          ),
        ],
      ),
    );
  }
}

MyLouncherUrl(String url) async {
  var uri = Uri.parse(url);

  if (!await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    log("not lounch");
  }
}
