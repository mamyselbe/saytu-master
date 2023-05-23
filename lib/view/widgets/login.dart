import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:saytu_jigueen_ni/view/widgets/decla.global.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 30,),
            Text("Saytu Jiigueen NI",
                style: TextStyle(
                    color: GlobalColors().mainColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20,),
            Icon(Icons.lock,
            size: 50,
            color: Colors.pink,),
            const SizedBox(height: 30,),

            Text('Veuillez renseigner vos identifiants',
                style: TextStyle(
                    color: GlobalColors().textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 30 ,),
            TextField(

              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400)
                ),
                  fillColor: Colors.grey.shade200,
                filled: true,
              ),
            ),
            const SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ButtonStyle(
                padding:MaterialStatePropertyAll(EdgeInsets.all(20)) ,
                backgroundColor: MaterialStatePropertyAll(Colors.pink),
              ),

              onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>InscriGlobal()),
              );
            }, child: Text('                            Se Connecter                                            ',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              child: Text ( 'inscrivez-vous avec :',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(width: MediaQuery.of(context).size.width * 0.6,
              child: Row(
                  children: [
              ///Google
              Expanded(
              child: Container(
              alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10,
                      )
                    ],
                  ),


                  child:Image.asset('assets/images/Google.svg', height: 70)
              ),
            ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 10,
                              )
                            ],
                          ),


                          child:Image.asset(
                            'assets/images/Facebook.svg', height: 70,
                          )
                      ),
                    ),
                    const SizedBox(width: 10,),
                    ///instagram
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 10,
                              )
                            ],
                          ),


                          child:Image.asset(
                            'assets/images/Instagram.svg', height: 70,
                          )
                      ),
                    ),

                  ],
              ),
    ),
          ],
        ),

      bottomNavigationBar: Container(
        height: 50,
        color:Colors.purpleAccent,
        alignment: Alignment.center,
        child:Row (
          children: [
            Text("Vous n'avez pas de compte ?",),
            InkWell(
              child: Text("S'incrire",
                style: TextStyle(
                    color: Colors.black

                ),),
            ),
          ],
        ),
      ),
    );
  }
}
