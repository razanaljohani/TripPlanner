import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_planner/utiles/strings.dart';
import 'package:trip_planner/view/widgets/text.dart';
import 'package:trip_planner/view/widgets/text_field.dart';

import '../../../logic/controller/auth_controller.dart';
import '../../widgets/button.dart';

class SignUpScreen extends StatelessWidget {
  final fromKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Star 1.png')),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 160),
              child: TextWidget(
                color: Color.fromRGBO(228, 168, 78, 1),
                fontSize: 30,
                fontWeight: FontWeight.w600,
                text: 'Trip Planner',
                underLine: TextDecoration.none,
              ),
            ),
          ]),

          SizedBox(
            height: MediaQuery.of(context).size.height / 1.3,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Form(
                key: fromKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    TextWidget(
                      color: Color.fromRGBO(228, 168, 78, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      text: 'username',
                      underLine: TextDecoration.none,
                    ),
                    TextFieldWidget(
                      controller: nameController,
                      obscureText: false,
                      validator: (value) {
                        if (value.toString().length <= 2 ||
                            !RegExp(validationName).hasMatch(value)) {
                          return 'Enter valid name';
                        } else {
                          return null;
                        }
                      },
                      prefixIcon: Get.isDarkMode
                          ? Image.asset("assets/images/user.png")
                          : Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                      suffixIcon: Text(""),
                      hintText: "",
                      labelText: 'User Name',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextWidget(
                      color: Color.fromRGBO(228, 168, 78, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      text: 'E-mail',
                      underLine: TextDecoration.none,
                    ),
                    TextFieldWidget(
                      controller: emailController,
                      obscureText: false,
                      validator: (value) {
                        if (RegExp(validationEmail).hasMatch(value)) {
                          return 'Invalid email';
                        } else {
                          return null;
                        }
                      },
                      prefixIcon: Get.isDarkMode
                          ? Image.asset("assets/images/email.png")
                          : Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                      suffixIcon: Text(""),
                      hintText: "",
                      labelText: 'Eamil',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                      color: Color.fromRGBO(228, 168, 78, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      text: 'password',
                      underLine: TextDecoration.none,
                    ),
                    GetBuilder<AuthController>(builder: (_) {
                      return TextFieldWidget(
                        controller: passwordController,
                        obscureText: controller.isVisibilty ? false : true,
                        validator: (value) {
                          if (value.toString().length <= 6) {
                            return 'password shoud be equal to 6 characters';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Get.isDarkMode
                            ? Image.asset("assets/images/lock.png")
                            : Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              controller.isVisibilty;
                            },
                            icon: controller.isVisibilty
                                ? Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  )),
                        hintText: "",
                        labelText: 'Password',
                      );
                    }),
                    SizedBox(
                      height: 50,
                    ),
                    GetBuilder<AuthController>(builder: (_) {
                      return AuthButton(
                        text: 'SIGN UP',
                        onPressed: () {
                          fromKey.currentState!.validate();
                          String name = nameController.text.trim();
                          String email = emailController.text.trim();
                          String password = passwordController.text;
                          controller.signUpUsingFirebase(
                              email: email, name: name, password: password);
                        },
                        FontWeight: FontWeight.bold,
                        underLine: TextDecoration.none,
                        color: Color.fromRGBO(228, 168, 78, 1),
                        fontSize: 18,
                        textColor: Colors.white,
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
          // Container(
          //   text: "Already have an account?",
          //   textType: "Log in",
          //   onpressed: () {
          //     Get.offNamed(Routes.loginScreen);
          //   },
          // ),
        ],
      ),
    ));
  }
}
