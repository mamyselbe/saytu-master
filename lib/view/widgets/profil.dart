import 'package:flutter/material.dart' ;
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:saytu_jigueen_ni/view/login.view.dart';
import 'package:saytu_jigueen_ni/view/widgets/parametre.dart';

import '../splash.view.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  final _formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.pink,
          ), onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.pink,
            ), onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>Parametre()),
            );
          },


          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,top: 25,right: 16),
        child: GestureDetector(
          onTap: (){ FocusScope.of(context).unfocus();
        },
          child: ListView(
            children: [
              Text("Profil",style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.w500
              ),),
      SizedBox(
          height: 15,

      ),

      Center(
          child: Stack(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Theme.of(context).scaffoldBackgroundColor
                  ),
                  boxShadow:[
                    BoxShadow(
                      spreadRadius: 2,blurRadius: 10,
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0,10)
                    )
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:NetworkImage("") ,

                  ),
                ),

    ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                  child: Icon(Icons.edit, color: Colors.white,),


              ),),


          ],
    ),
      ),
              SizedBox(
                height: 35,

              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person ,color: Colors.pink,),
                  title:Text ("Nom d'utilisateur",),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.email ,color: Colors.pink,),
                  title:Text (" email de l'utilisateur",),

                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.security ,color: Colors.pink,),
                  title:Text (" Politique de confidentialité",),
                  trailing: Icon(Icons.arrow_forward_ios,
                    color: Colors.pink,),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.share ,color: Colors.pink,),
                  title:Text (" Partager l'application",),
                  trailing: Icon(Icons.arrow_forward_ios,
                    color: Colors.pink,),
                ),
              ),

              Padding(padding: EdgeInsets.all(10)),
              FloatingActionButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>LoginView()),
                    );
                    //TODO:Appliquer la logique

                  }
                },
                backgroundColor:  Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: const Text("Se deconnecter"),
              ),
            ],
          ),
        ),
      ),
    );

  }

}
