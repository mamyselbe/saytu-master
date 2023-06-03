import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:saytu_jigueen_ni/view/widgets/parametre.dart';
import 'package:saytu_jigueen_ni/view/widgets/profil.dart';
import 'package:saytu_jigueen_ni/view/widgets/regles.dart';
import 'package:table_calendar/table_calendar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion du cycle menstruel',
      theme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime _dateSelectionnee;
  late List<DateTime> _datesMenstruelles;
  late DateTime _dateOvulation;
  late DateTime _selectedDay = 25;

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
        leading: IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {
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
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProfilPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay; // update `_focusedDay` here as well
            });
          },
        )
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _ajouterDateMenstruelle,
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
