import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/view/widgets/decla.global.dart';

class ButtonGobal extends StatelessWidget {
  const ButtonGobal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Login');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const InscriGlobal()),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
        child: const Text(
          'Se connecter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
