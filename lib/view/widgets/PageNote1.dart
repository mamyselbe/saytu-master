import 'package:flutter/material.dart' ;
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/pageNote2.dart';
class PageNote2 extends StatefulWidget {
  const PageNote2({Key? key}) : super(key: key);

  @override
  State<PageNote2> createState() => _PageNote2State();
}

class _PageNote2State extends State<PageNote2> {
  int _value = 0;
  void change(int s) { setState(() {
    _value=s;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text("Vous sentez-vous souvent fatiguée ?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.all(10)),
          Image.asset('assets/images/fatigue.png',),
          Padding(padding: EdgeInsets.all(10)),

    Row(children: [
    Radio(value: 1,
    groupValue: _value,
    onChanged: (Value){
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>PageNote3()),
      );

    });
    },
    ),

    SizedBox(width: 10.0, ),

    const Text("OUI",style: TextStyle(
    fontSize: 20

    ),),

    ],

    ),
    Row(children: [
    Radio(value: 1,
    groupValue: _value,
    onChanged: (Value){
    setState(() {
    _value =_value;
    });
    },
    ),

    SizedBox(width: 10.0, ),

    const Text("Non",style: TextStyle(
    fontSize: 20

    ),),

    ],

    ),
    ],
    ),
    ),
    );
  }
}
