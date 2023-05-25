import "dart:async";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:saytu_jigueen_ni/utils/global.color.dart";
import "package:saytu_jigueen_ni/view/login.view.dart";

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds:5), (){
      Get.to(Login());
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
        ],
    ));
  }
}
