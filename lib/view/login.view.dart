import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:saytu_jigueen_ni/view/widgets/Inscription.dart';
import 'package:saytu_jigueen_ni/view/widgets/button.global.dart';
import 'package:saytu_jigueen_ni/view/widgets/social.login.dart';
import 'package:saytu_jigueen_ni/view/widgets/decla.global.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Form(
            key: _formField,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', height: 200, width: 200),
                const SizedBox(height: 50),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}˜]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
                    ).hasMatch(value!);
                    if(value.isEmpty) {
                      return "Entrer votre email";
                    } else if (!emailValid) {
                      return "Entrer un email valide";
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passwordController,
                  obscureText: passToggle,
                  decoration: const InputDecoration(
                    labelText: "Mot de passe",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (value) {
                    if(value!.isEmpty) {
                      return "Entrer votre mot de passe";
                    } else if (passwordController.text.length < 6) {
                      return "Le mot de passe doit dépasser 6 caractères";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    if(_formField.currentState!.validate()) {
                      if(emailController.text == 'test@email.co' && passwordController.text == 'passer') {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const InscriGlobal())
                        );
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const Login())
                        );
                      }
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'Connexion',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Vous n'avez pas encore de compte ?",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const Inscription())
                          );
                        },
                        child: const Text(
                            'Inscription',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}