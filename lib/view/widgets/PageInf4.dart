import 'package:flutter/material.dart' ;
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/cycle2.dart';

class PageInfo4 extends StatefulWidget {
  const PageInfo4({Key? key}) : super(key: key);

  @override
  State<PageInfo4> createState() => _PageInfo4State();
}

class _PageInfo4State extends State<PageInfo4> {
  int _value = 0;
  void change(int s) { setState(() {
    _value=s;
  });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children:[

            Text(" Est-ce que vos régles arrivent de maniére inattendue ?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize:   28,
                    fontWeight: FontWeight.bold)),
            Padding(padding: EdgeInsets.all(10)),
            Image.asset('assets/images/question.png',),


            Row(children: [
              Radio(value: 1,
                groupValue: _value,
                onChanged: (Value){
                  setState(() {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>PageCycle2()),
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
            OutlinedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>PageCycle2()),
                );
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: const BorderSide(width: 1, color: Colors.black),
              ),
              child: const Text('Je ne suis pas sur'),
            ),

          ],
        ),
      ),
    );
  }
}
