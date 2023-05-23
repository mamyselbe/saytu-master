import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';

import '../decgloss.dart';
class InfoGross extends StatelessWidget {
  const InfoGross({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedValue = 'option1';
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
            MaterialPageRoute(builder: (context) => Declaration ()),
          );
        },
        ),
        title: Text("Renseigner ma  grossesse"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Veuillez entre vos information :", style: TextStyle(
            color: Colors.black,
            fontSize: 29,
            fontWeight: FontWeight.bold)),
            SizedBox(
              height: 25,

            ),
            Text('Hopital ou la clinique pour votre rendez-vous',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
    decoration: const InputDecoration(
    icon: Icon(Icons.local_hospital,color: Colors.pink,),
    labelText: "Entrez le lieu de votre rendez-vous",
    ),
    ),
    ),
            SizedBox(
              height: 15,

            ),
            Text('le nom de vrote medecin ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person,color: Colors.pink,),
                  labelText: "Entrez le nom de votre medecin ",
                ),
              ),
            ),
            SizedBox(
              height: 15,

            ),
            Text("L'heure de votre rendez-vous",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:  DropdownButton<String>(
                hint: Text("selection l'heure de votre rendez-vous"),
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
                child: Text(" 09hOOmm"),
              ),
              DropdownMenuItem<String>(
                value: 'option3',
                child: Text(' 10hOOmm'),

              ),
              DropdownMenuItem<String>(
                value: 'option4 ',
                child: Text(' 11hOOmm'),
              ),DropdownMenuItem<String>(
              value: 'option5',
              child: Text(' 12hOOmm'),
            ),
              DropdownMenuItem<String>(
                value: 'option6',
                child: Text('13hOOmm '),
              ),
              DropdownMenuItem<String>(
                value: 'option7',
                child: Text(' 14hOOmm'),
              ),
                  DropdownMenuItem<String>(
                    value: 'option8',
                    child: Text(' 15hOOmm'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option9',
                    child: Text(' 16hOOmm'),
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
                  MaterialPageRoute(builder: (context) => InfoGross()),
                );
              },
              child: Text('                   Enrigistrer                  ',
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

  void setState(Null Function() param0) {}
}
