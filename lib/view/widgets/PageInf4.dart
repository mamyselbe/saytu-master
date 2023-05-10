import 'package:flutter/material.dart' ;
import 'package:get/get_utils/get_utils.dart';

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
            Text("Est-ce que vos régles arrivent de maniére inattendue ?",
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
