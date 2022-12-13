import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controller/auth_controller.dart';
import '../../routes/routes.dart';
import '../widgets/HomeButton.dart';
import '../widgets/button.dart';
import '../widgets/text.dart';
import '../widgets/text_field.dart';
import 'package:trip_planner/utiles/strings.dart';

import '../widgets/text_span.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({
    super.key,
  });

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
              child: Container(
                child: Stack(children: [
                  SizedBox(
                    height: 580,
                    width: 500,
                    child: Image.asset(
                      "assets/images/Rectangle 16.png",
                      fit: BoxFit.fill,
                      height: 500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.grey.withOpacity(0.7),
                      ),
                      height: 150,
                      width: 500,
                      child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        //  crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                TextWidget(
                                  color: Color.fromRGBO(251, 185, 87, 1),
                                  fontSize: 60,
                                  fontWeight: FontWeight.normal,
                                  text: 'Trip planner',
                                  underLine: TextDecoration.none,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                TextWidget(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.normal,
                                  text: 'in',
                                  underLine: TextDecoration.none,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TextWidget(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.normal,
                              text: 'Saudi Arabia !',
                              underLine: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Column(
                  children: [
                    // TextWidget(
                    //   color: Colors.black,
                    //   fontSize: 18,
                    //   fontWeight: FontWeight.bold,
                    //   text: 'Travel anywhere in Saudi ',
                    //   underLine: TextDecoration.none,
                    // ),
                    // TextWidget(
                    //   color: Colors.black,
                    //   fontSize: 18,
                    //   fontWeight: FontWeight.bold,
                    //   text: 'Arabia without any Hassles ',
                    //   underLine: TextDecoration.none,
                    // ),

                    Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: TextSpanWidget(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          text:
                              'Travel anywhere in Saudi Arabia without any Hassles',
                          underLine: TextDecoration.none,
                        )),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: TextSpanWidget(
                          color: Colors.grey.withOpacity(0.9),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          text:
                              'If you love to travel a lot, this is the place for you!  Here you can travel with your favorite tour and enjoy..',
                          underLine: TextDecoration.none,
                        )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // AuthButton(
                        //   color: Colors.grey,
                        //   onPressed: () {},
                        //   text: 'Skip',
                        // )
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 40),
                          child: HomeButton(
                            child: Text('Skip'),
                            onPressed: () {},
                            underLine: TextDecoration.none,
                            fontSize: 18,
                            FontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 215, 212, 212)
                                .withOpacity(0.4),
                            textColors: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 40),
                          child: HomeButton(
                            child: Row(
                              children: [
                                Text('Next'),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.arrow_circle_right_sharp)
                              ],
                            ),
                            onPressed: () {
                              Get.offNamed(Routes.homeScreen);
                            },
                            underLine: TextDecoration.none,
                            fontSize: 18,
                            FontWeight: FontWeight.bold,
                            color: Color.fromRGBO(228, 168, 78, 1),
                            textColors: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
