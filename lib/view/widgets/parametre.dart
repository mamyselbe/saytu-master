import 'package:flutter/material.dart' ;
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:saytu_jigueen_ni/view/widgets/profil.dart';

import '../splash.view.dart';

class Parametre extends StatefulWidget {
  const Parametre({Key? key}) : super(key: key);

  @override
  State<Parametre> createState() => _ParametreState();
}

class _ParametreState extends State<Parametre> {
  final _formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar (
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.pink,
          ), onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>ProfilPage()),
          );
        },
        ),

      ),
      body: Container(
        child: ListView(
          children: [
            Text("Paramétre",
              style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.w500
              ),),
            SizedBox(
              height: 40,

            ),

            Row(
              children: [
                Icon(Icons.person,color: Colors.pink,),
                Text("Compte",style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.bold
                ),)
              ],
            ),
            Divider(height: 15,thickness: 2,),
            SizedBox(
              height: 40,

            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context, builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Modifier mon mot de passe"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Ancien mot de passe",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Mot de passe",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            TextField(
                              decoration: InputDecoration(
                                hintText: "Confirmer mot de passe",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        actions: [
                          FloatingActionButton(
                            onPressed:(){
                              Navigator.of(context).pop();
                            },
                            child:  Text('Fermer'),

                          ),
                        ],
                      );
                },

                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Mot de Passe",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w500,
                    color: Colors.grey

                  ),),
                  Icon( Icons.arrow_forward_ios,
                    color: Colors.pink,

                  ),
                ],
              ),

            ),
            SizedBox(
              height: 40,

            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context, builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Mes Informations"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.co_present ,color: Colors.pink,),
                          title:Text (" Nom",),
                          trailing: Icon(Icons.password_sharp,
                            color: Colors.pink,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(Icons.call ,color: Colors.pink,),
                          title:Text (" N téléphone ",),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(Icons.email ,color: Colors.pink,),
                          title:Text (" Email",),
                          trailing: Icon(Icons.password_sharp,
                            color: Colors.pink,),
                        ),
                        SizedBox(
                          height: 10,
                        ),  ListTile(
                          leading: Icon(Icons.calendar_month_outlined ,color: Colors.pink,),
                          title:Text (" Date de naissance",),

                        ),
                        SizedBox(
                          height: 10,
                        ),  ListTile(
                          leading: Icon(Icons.co_present ,color: Colors.pink,),
                          title:Text (" Region",),
                          trailing: Icon(Icons.password_sharp,
                            color: Colors.pink,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    actions: [
                      FloatingActionButton(
                        onPressed:(){
                          Navigator.of(context).pop();
                        },
                        child:  Text('Fermer'),

                      ),
                    ],
                  );
                },

                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mes Informations",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w500,
                      color: Colors.grey
                  ),),
                  Icon( Icons.arrow_forward_ios,
                    color: Colors.pink,

                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,

            ),

            GestureDetector(
              onTap: () {
                showDialog(
                  context: context, builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Changer de Langue"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Francais"),
                        Text("wolof"),
                        Text("Serere"),
                      ],
                    ),
                    actions: [
                      FloatingActionButton(
                        onPressed:(){
                          Navigator.of(context).pop();
                        },
                        child:  Text('Fermer'),

                      ),
                    ],
                  );
                },

                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Language",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w500,
                      color: Colors.grey

                  ),),
                  Icon( Icons.arrow_forward_ios,
                    color: Colors.pink,

                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,

            ),



            GestureDetector(
              onTap: () {
                showDialog(
                  context: context, builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Confidentialité & Sécurité"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Option 1"),
                        Text("Option 2"),
                        Text("Option 3"),
                      ],
                    ),
                    actions: [
                      FloatingActionButton(
                        onPressed:(){
                          Navigator.of(context).pop();
                        },
                        child:  Text('Fermer'),

                      ),
                    ],
                  );
                },

                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Confidentialité & Sécurité",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w500,
                      color: Colors.grey

                  ),),
                  Icon( Icons.arrow_forward_ios,
                    color: Colors.pink,

                  ),
                ],
              ),
            ),


            FloatingActionButton(
              onPressed: (){
                if(_formKey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SplashView()),
                  );
                  //TODO:Appliquer la logique

                }
              },
              backgroundColor:  Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
              ),
              child: const Text("Supprimer mon Compte"),
            ),
          ],




        ),
      ),

    );
  }
}
