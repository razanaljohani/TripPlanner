import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_planner/view/widgets/text.dart';
import 'package:trip_planner/view/widgets/text_span.dart';

import '../../routes/routes.dart';
import '../widgets/button.dart';
import 'auth/login_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/Rectangle 16 (1).png",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            TextSpanWidget(
                text: "EXPLORE BEAUTY OF JOURNEY",
                color: Colors.white,
                fontSize: 57,
                fontWeight: FontWeight.bold,
                underLine: TextDecoration.none),
            SizedBox(
              height: 20,
            ),
            TextSpanWidget(
                text: "everything you can imagine, is here",
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                underLine: TextDecoration.none),
            SizedBox(
              height: 250,
            ),
            AuthButton(
              text: 'Log In',
              onPressed: () {
                Get.offNamed(Routes.loginScreen);
              },
              FontWeight: FontWeight.bold,
              underLine: TextDecoration.none,
              color: Color.fromRGBO(228, 168, 78, 1),
              fontSize: 18,
              textColor: Colors.white,

//Get.toNamed(Routes.loginScreen);
//Get.toNamed(Routes.signUpScreen);
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: "Dont Have an Acount?",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  underLine: TextDecoration.none,
                ),
                TextButton(
                    onPressed: () {
                      Get.offNamed(Routes.signUpScreen);
                    },
                    child: TextWidget(
                      text: "Sign Up",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      underLine: TextDecoration.underline,
                    ))
              ],
            )
          ],
        ),
      ],
    );
  }
}
