import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/liste%20grossesse.dart';
import 'package:saytu_jigueen_ni/view/widgets/note.dart';

import 'cycle.dart';


class InscriGlobal extends StatelessWidget {
  const InscriGlobal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Je veux :', style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
            style: ButtonStyle(
              padding:MaterialStatePropertyAll(EdgeInsets.all(08)) ,
              backgroundColor: MaterialStatePropertyAll(Colors.pink),

            ),
              onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>NoteCycle()),
              );
              },
          child:ListTile(
            leading: Icon(Icons.calendar_month_outlined ,color: Colors.white),
            title: Text(' Suivre mon cycle ',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),

          ),
          Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
            style: ButtonStyle(
              padding:MaterialStatePropertyAll(EdgeInsets.all(08)) ,
              backgroundColor: MaterialStatePropertyAll(Colors.pink),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>PageGros()),
              );
            },
            child:ListTile(
              leading: Icon(Icons.woman ,color: Colors.white,),
              title: Text(' Suivre ma grossesse ',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),

          ),





        ],
      ),
    );
  }
}

