import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:saytu_jigueen_ni/view/widgets/parametre.dart';
import 'package:saytu_jigueen_ni/view/widgets/profil.dart';
import 'package:saytu_jigueen_ni/view/widgets/regles.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime _dateSelectionnee;
  late List<DateTime> _datesMenstruelles;
  late DateTime _dateOvulation;

  @override
  void initState() {
    super.initState();
    _dateSelectionnee = DateTime.now();
    _datesMenstruelles = [];
    _dateOvulation = _dateSelectionnee.add(Duration(days: 14));
  }

  void _selectionnerDate(BuildContext context) async {
    final DateTime? dateSelectionnee = await showDatePicker(
      context: context,
      initialDate: _dateSelectionnee,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (dateSelectionnee != null && dateSelectionnee != _dateSelectionnee) {
      setState(() {
        _dateSelectionnee = dateSelectionnee;
        _dateOvulation = _dateSelectionnee.add(Duration(days: 14));
      });
    }
  }

  void _ajouterDateMenstruelle() async {
    final DateTime? nouvelleDate = await showDatePicker(
      context: context,
      initialDate: _dateSelectionnee,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (nouvelleDate != null) {
      setState(() {
        _datesMenstruelles.add(nouvelleDate);
      });
    }
  }

  bool _estDateMenstruelle(DateTime date) {
    return _datesMenstruelles.contains(date);
  }

  bool _estDateOvulation(DateTime date) {
    return date.year == _dateOvulation.year &&
        date.month == _dateOvulation.month &&
        date.day == _dateOvulation.day;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 1,
        leading:  IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ), onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Parametre()),
          );
        },


        ),
        title: Text('Gestion du cycle menstruel'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ), onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>ProfilPage()),
            );
          },


          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _selectionnerDate(context),
              child: Column(
                children: [
                  Text(
                    'Date sélectionnée :',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '${_dateSelectionnee.toString().substring(0, 10)}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Dates menstruelles :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _datesMenstruelles.length,
                itemBuilder: (BuildContext context, int index) {
                  final date = _datesMenstruelles[index];
                  return ListTile(
                    title: Text(
                      date.toString().substring(0, 10),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _estDateOvulation(date) ? Colors.yellow : Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Date d\'ovulation :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              '${_dateOvulation.toString().substring(0, 10)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.yellow),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _ajouterDateMenstruelle,
        child: Icon(Icons.add),
      ),
    );
  }
}

