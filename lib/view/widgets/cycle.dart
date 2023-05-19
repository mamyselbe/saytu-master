import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/regles.dart';

class PageCycle extends StatefulWidget {
  const PageCycle({Key? key}) : super(key: key);

  @override
  State<PageCycle> createState() => _PageCycleState();
}

class _PageCycleState extends State<PageCycle> {
  final _formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Quelle la  durée de vos régles:', style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold)),
      Padding(padding: EdgeInsets.all(10)),
      ElevatedButton(
        style: ButtonStyle(
          padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
          backgroundColor: MaterialStatePropertyAll(Colors.pink),
        ),
        onPressed: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>pageRegle()),
          );
        },
        child: Text('                   3 Jours                                      ',
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
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>pageRegle()),
                );
              },
              child: Text('                   4 Jours                                      ',
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
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>pageRegle()),
                );
              },
              child: Text('                   5 Jours                                      ',
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
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>pageRegle()),
                );
              },
              child: Text('                   6 Jours                                      ',
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
      onPressed: (){
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>pageRegle()),
      );
    },
      child: Text('                   7 Jours                                      ',
        style: TextStyle(
            fontSize: 20
        ),
      ),
    ),
            Padding(padding: EdgeInsets.all(10)),
    FloatingActionButton(
    onPressed: (){
    if(_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>pageRegle()),
      );
    //TODO:Appliquer la logique

    }
    },
    backgroundColor:  Colors.black12,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0)
    ),
    child: const Text("passer"),
    ),

    ],
    ),
    );
  }
}
