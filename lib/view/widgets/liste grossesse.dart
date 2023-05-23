import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


import '../decgloss.dart';
import 'decla.global.dart';

class PageGros extends StatefulWidget {
  const PageGros({Key? key}) : super(key: key);

  @override
  State<PageGros> createState() => _PageGrosState();
}

class _PageGrosState extends State<PageGros> {
  String selectedValue = 'option1';
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
    MaterialPageRoute(builder: (context) => InscriGlobal ()),
    );
    },
    ),
    title: Text("Declarer ma  grossesse"),
        ),
      body: Center(
        child: Column(

          children: [
            Image.asset('assets/images/femm.png', height: 250,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink, width: 1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Text('Depuis combien de mois etes-vous enceinte ?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),),
            ),
            Padding(padding: EdgeInsets.all(10)),
    DropdownButton<String>(
        hint: Text("selection votre état de grossesse"),
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
              child: Text('1 mois de grossesse'),
            ),
            DropdownMenuItem<String>(
              value: 'option2',
              child: Text('2 mois de grossesses'),
            ),
            DropdownMenuItem<String>(
              value: 'option3',
              child: Text('3 mois de grossesse'),

            ),
            DropdownMenuItem<String>(
              value: 'option4 ',
              child: Text('4 mois de grossesse'),
            ),DropdownMenuItem<String>(
              value: 'option5',
              child: Text('5 mois de grossesse'),
            ),
            DropdownMenuItem<String>(
              value: 'option6',
              child: Text('6 mois de grossesse'),
            ),
            DropdownMenuItem<String>(
              value: 'option7',
              child: Text('7 mois de grossesse'),
            ),
            DropdownMenuItem<String>(
              value: 'option8',
              child: Text('8 mois de grossesse'),
            ),
            DropdownMenuItem<String>(
              value: 'option9',
              child: Text('9 mois de grossesse'),
            ),

          ],


          onChanged: (newValue) {
    setState(() {
    selectedValue = newValue!;
    });
    },
    ),
            Padding(padding: EdgeInsets.all(10)),
            TextButton(
              style: const ButtonStyle(
                  padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
                  backgroundColor: MaterialStatePropertyAll(Colors.pink)
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>Declaration()),
                );
              },
              child: const Text("                    Suivant                        ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),),
            ),
    ],
        ),
      )
    );
  }
}
