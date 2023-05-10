import 'package:flutter/material.dart' ;
import 'package:get/get_utils/get_utils.dart';

class PageInfo5 extends StatefulWidget {
  const PageInfo5({Key? key}) : super(key: key);

  @override
  State<PageInfo5> createState() => _PageInfo5State();
}

class _PageInfo5State extends State<PageInfo5> {
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
            Text("Avez-vous déja eu des crampes menstrulles ?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
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
