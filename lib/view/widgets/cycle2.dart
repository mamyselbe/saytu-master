import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/cycle.dart';
class PageCycle2 extends StatefulWidget {
  const PageCycle2({Key? key}) : super(key: key);

  @override
  State<PageCycle2> createState() => _PageCycle2State();
}

class _PageCycle2State extends State<PageCycle2> {
  final _formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('La duree de votre cycle:', style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
            style: ButtonStyle(
              padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
              backgroundColor: MaterialStatePropertyAll(Colors.pink),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>PageCycle()),
              );
            },
            child: Text('                    27 Jours                                      ',
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
            child: Text('                    28 Jours                                      ',
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
            onPressed: ()  {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) =>PageCycle()),
    );
    },
            child: Text('                    29 Jours                                      ',
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
            onPressed:  () {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) =>PageCycle()),
    );
    },
            child: Text('                    30 Jours                                      ',
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
            onPressed: () {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) =>PageCycle()),
    );
    },
            child: Text('                   35 Jours                                      ',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          FloatingActionButton(
            onPressed: (){

              if(_formKey.currentState!.validate()) {

                //TODO:Appliquer la logique

              }
            },
            backgroundColor:  Colors.black12,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: const Text("Passer"),
          ),

        ],
      ),
    );
  }
}
