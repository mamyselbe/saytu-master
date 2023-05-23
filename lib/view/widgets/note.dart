import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:saytu_jigueen_ni/view/widgets/button.global.dart';
import 'package:saytu_jigueen_ni/view/widgets/regles.dart';
import 'package:saytu_jigueen_ni/view/widgets/social.login.dart';

import 'decla.global.dart';


class NoteCycle extends StatelessWidget {
  const NoteCycle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 1,
        leading:  IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => InscriGlobal ()),
          );
        },
        ),
        title: Text("Declarer mon cycle"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text(' Avez-vous un cycle régulier  ?', style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.all(10)),
            Image.asset('assets/images/cycle.png',),

            Padding(padding: EdgeInsets.all(10)),
            TextButton(
              style: const ButtonStyle(
                  padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
                  backgroundColor: MaterialStatePropertyAll(Colors.pink)
              ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>pageRegle()),
                  );
                },
                child: const Text("            J'ai un cycle regulier                           ",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
            ),
            
            Padding(padding: EdgeInsets.all(10)),

            TextButton(
              style: const ButtonStyle(
                  padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
                  backgroundColor: MaterialStatePropertyAll(Colors.pink)
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>pageRegle()),
                );
              },
              child: const Text("               J'ai un cycle iregulier                         ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(padding: EdgeInsets.all(10)),

            TextButton(
              style: const ButtonStyle(
                  padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
                  backgroundColor: MaterialStatePropertyAll(Colors.pink)
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>pageRegle()),
                );
              },
              child: const Text("                  Je ne sais pas                                 ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
            ),

          ],


      ),
    );
  }
}
