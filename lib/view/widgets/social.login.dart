
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
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


                  child:SvgPicture.asset('assets/images/Google.svg', height: 70)
                  ),
              ),
              const SizedBox(width: 10,),
///Facebook
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


                    child:SvgPicture.asset(
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


                    child:SvgPicture.asset(
                      'assets/images/Instagram.svg', height: 70,
                    )
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
