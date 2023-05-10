import 'package:flutter/material.dart';


class PageInfo extends StatefulWidget {
  const PageInfo({Key? key}) : super(key: key);

  @override
  State<PageInfo> createState() => _PageInfoState();
}

class _PageInfoState extends State<PageInfo> {
  int _value = 0;
  void change(int s) { setState(() {
    _value=s;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(" Avant vos régles ,souffrez-vous des Symptômes suivants(SPM)  ?",
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

            const Text("Aucun de ces Symptômes",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),

          Row(children: [
            Radio(value: 2,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            const SizedBox(width: 10.0, ),

            const Text(" Acné ",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),

          Row(children: [
            Radio(value: 3,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            const SizedBox(width: 10.0, ),

            const Text(" seins douloureux",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),
          Row(children: [
            Radio(value: 4,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            SizedBox(width: 10.0, ),

            Text("Fatigue",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),
          Row(children: [
            Radio(value: 5,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            SizedBox(width: 10.0, ),
            Text("Sautes d'humeur",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),
          Row(children: [
            Radio(value: 6,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            SizedBox(width: 10.0, ),

            Text("Céphalée",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),
          Row(children: [
            Radio(value: 6,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            SizedBox(width: 10.0, ),

            Text("Maux de dos",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),
          Row(children: [
            Radio(value: 6,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            SizedBox(width: 10.0, ),

            Text("Autres",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),
          Row(children: [
            Radio(value: 7,
              groupValue: _value,
              onChanged: (Value){
                setState(() {
                  _value =_value;
                });
              },
            ),

            SizedBox(width: 10.0, ),

            Text("Non,tout va bien",style: TextStyle(
                fontSize: 20

            ),),

          ],

          ),


        ],
      ),
    );
  }
}
