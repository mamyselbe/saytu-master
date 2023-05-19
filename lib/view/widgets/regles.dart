import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';

class pageRegle extends StatefulWidget {
  const pageRegle({Key? key}) : super(key: key);

  @override
  State<pageRegle> createState() => _pageRegleState();
}

class _pageRegleState extends State<pageRegle> {
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  icon: Icon(Icons.calendar_today_rounded),
                  labelText: "Entrez la date de vos derniers régles"
                ),
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2023));


                },
              ),
            ),
          ],
        ),
      ),


    );
  }
}
