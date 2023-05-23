import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:intl/intl.dart';
import 'package:saytu_jigueen_ni/view/widgets/decla.global.dart';
import 'package:saytu_jigueen_ni/view/widgets/infogross.dart';
import 'package:saytu_jigueen_ni/view/widgets/liste%20grossesse.dart';
class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
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
              MaterialPageRoute(builder: (context) => PageGros ()),
            );
          },
          ),
        title: Text("Declarer ma grossesse"),

      ),
      body: Center(
        child: Column(

          children: [
            Image.asset('assets/images/regl.png',),
            Text('La date de vos prochain rendez-vous',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _date,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today_rounded,color: Colors.pink,),
                  labelText: "Entrez la date de vos prochain rendez-vous",
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
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
            Text('La date debut votre grossesse',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _date,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today_rounded,color: Colors.pink,),
                  labelText: "Entrez la date  debut votre grossesse",
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
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
              child: Text('                   Suivant                   ',
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
