import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:saytu_jigueen_ni/view/decgloss.dart';
import 'package:saytu_jigueen_ni/view/login.view.dart';
import 'package:saytu_jigueen_ni/view/splash.view.dart';
import 'package:saytu_jigueen_ni/view/widgets/Inscription.dart';
import 'package:saytu_jigueen_ni/view/widgets/Pageview.dart';
import 'package:saytu_jigueen_ni/view/widgets/cycle.dart';
import 'package:saytu_jigueen_ni/view/widgets/decla.global.dart';
import 'package:saytu_jigueen_ni/view/widgets/liste%20grossesse.dart';
import 'package:saytu_jigueen_ni/view/widgets/login.dart';
import 'package:saytu_jigueen_ni/view/widgets/note.dart';
import 'package:saytu_jigueen_ni/view/widgets/parametre.dart';
import 'package:saytu_jigueen_ni/view/widgets/profil.dart';
import 'package:saytu_jigueen_ni/view/widgets/regles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
