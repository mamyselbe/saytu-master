import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/note.dart';

import 'caladar.dart';



class pageRegle extends StatefulWidget {
  const pageRegle({Key? key}) : super(key: key);

  @override
  State<pageRegle> createState() => _pageRegleState();
}

class _pageRegleState extends State<pageRegle> {
  String selectedValue = 'option1';
  TextEditingController _date = TextEditingController();
  final _formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 1,
        leading:  IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => NoteCycle()),
          );
        },


        ),
        title: Text("Rensegner mon Cycle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/regl.png',),
            Text('La date de vos dernier régle',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _date,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today_rounded,color: Colors.pink,),
                  labelText: "Entrez la date de vos derniers régles",
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null){
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                    });
                  }
                },
              ),
            ),

      SizedBox(
        height: 10,

      ),
      Text('La duree de votre cycle :', style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold)),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child:  DropdownButton<String>(
          hint: Text("selection la durée de vos cycles"),
          dropdownColor: Colors.grey,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 36,
          isExpanded: true,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
          value: selectedValue,
          items: [
            DropdownMenuItem<String>(
              value: 'option1',
              child: Text('  '),
            ),
            DropdownMenuItem<String>(
              value: 'option2',
              child: Text(" 27 Jours"),
            ),
            DropdownMenuItem<String>(
              value: 'option3',
              child: Text(' 28 Jours'),

            ),
            DropdownMenuItem<String>(
              value: 'option4 ',
              child: Text(' 29 Jours'),
            ),DropdownMenuItem<String>(
              value: 'option5',
              child: Text(' 30 Jours'),
            ),
            DropdownMenuItem<String>(
              value: 'option6',
              child: Text('35 Jours '),
            ),
          ],
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),

      ),

      SizedBox(
              height: 10,

            ),
            Text('La durée de vos régles :', style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:  DropdownButton<String>(
                hint: Text("selection la durée de vos régles"),
                dropdownColor: Colors.grey,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                value: selectedValue,
                items: [
                  DropdownMenuItem<String>(
                    value: 'option1',
                    child: Text('  '),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option2',
                    child: Text(" 03 Jours"),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option3',
                    child: Text(' 04 Jours'),

                  ),
                  DropdownMenuItem<String>(
                    value: 'option4 ',
                    child: Text(' O5 Jours'),
                  ),DropdownMenuItem<String>(
                    value: 'option5',
                    child: Text(' O6 Jours'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option6',
                    child: Text('07 Jours '),
                  ),
                ],
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
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
                  MaterialPageRoute(builder: (context) =>  CalendarScreen()),
                );
              },
              child: Text('                   Enrigister                  ',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ),
          ],


        ),
      ),

    );
  }
}
