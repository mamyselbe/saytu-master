import 'package:flutter/material.dart' ;
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/PageNote1.dart';
class PageNote1 extends StatefulWidget {
  const PageNote1({Key? key}) : super(key: key);

  @override
  State<PageNote1> createState() => _PageNote1State();
}

class _PageNote1State extends State<PageNote1> {
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
            Text(" Avez-vous des nausées matinales ?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.all(10)),
            Image.asset('assets/images/nausee.png'),

            Padding(padding: EdgeInsets.all(10)),

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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>PageNote2()),
                    );
                  });
                },
              ),

              SizedBox(width: 10.0, ),

              const Text("Non",style: TextStyle(
                  fontSize: 20

              ),),

            ],

            ),
            OutlinedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>PageNote2()),
                );
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: const BorderSide(width: 1, color: Colors.black),
              ),
              child: const Text('Passer'),
            ),
          ],
        ),
      ),

    );
  }
}



