import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:saytu_jigueen_ni/view/widgets/button.global.dart';
import 'package:saytu_jigueen_ni/view/widgets/social.login.dart';
class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  String nomcomplet ='';

  String email ='';

  String motdepass ='';

  String confirmmdp ='';

  final _formKey = GlobalKey<FormState >();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 30.0),
          key: _formKey,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                // ignore: prefer_const_constructors
                Center(
                  child: Text('Créer un compte',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                const SizedBox( height: 10.0),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Nom complet',
                      border: OutlineInputBorder()
                  ),
                  validator: (val) => val!.isEmpty ? 'Entrez votre Nom Complet' : null,
                  onChanged: (val) => nomcomplet = val,
                ),
                const SizedBox( height: 10.0),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                  ),
                  validator: (val) => val!.isEmpty ? 'Entrez votre Email' : null,
                  onChanged: (val) => nomcomplet = val,
                ),
                const SizedBox( height: 10.0),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder()
                  ),
                  validator: (val) => val!.length < 6 ? 'Entrez votre Mot de Passe(6 caractères ou plus) ' : null,
                  onChanged: (val) => nomcomplet = val,
                  obscureText: true,
                ),
                const SizedBox( height: 10.0),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Confirmer le mot de passe ',
                      border: OutlineInputBorder()
                  ),
                  onChanged: (val) => confirmmdp = val,
                  validator: (val) =>confirmmdp!=motdepass ? 'Mot de passe ne correspond pas' : null,

                  obscureText: true,
                ),
                Padding(padding: EdgeInsets.all(10)),

                FloatingActionButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()) {
                      //TODO:Appliquer la logique

                    }
                  },
                  backgroundColor:  Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: const Text("S'inscrire"),
                ),
                Padding(padding: EdgeInsets.all(10)),

                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: const BorderSide(width: 1, color: Colors.black),
                  ),
                  child: const Text('Besoin d/un nouveau compte'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
