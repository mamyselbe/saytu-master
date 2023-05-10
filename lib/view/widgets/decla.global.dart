import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';

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
              padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
              backgroundColor: MaterialStatePropertyAll(Colors.pink),
            ),
              onPressed: () => print('button click'),
          child: Text('                    Suivre mon cycle                                      ',
          style: TextStyle(
            fontSize: 20
          ),
          ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
            style: ButtonStyle(
              padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
              backgroundColor: MaterialStatePropertyAll(Colors.pink),
            ),
            onPressed: () => print('button click'),
            child: Text('                   Suivre ma grossesse                                ',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ),





        ],
      ),
    );
  }
}

