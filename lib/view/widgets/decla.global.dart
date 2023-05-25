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
        children: [
          const Text('Je veux :',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.w900,
              )
          ),
          const Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
            child: ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(8.0)),
                backgroundColor: MaterialStatePropertyAll(Colors.pink),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const NoteCycle())
                );
              },
              child: const ListTile(
                leading: Icon(Icons.calendar_month_outlined, color: Colors.white),
                title: Text(
                  'Déclarer mon cycle',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
            child: ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(08)),
                backgroundColor: MaterialStatePropertyAll(Colors.pink),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const PageGros())
                );
              },
              child: const ListTile(
                leading: Icon(
                  Icons.woman,
                  color: Colors.white,
                ),
                title: Text(
                  'Déclarer ma grossesse',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
