import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/auth_controller.dart';
import '../../widgets/button.dart';
import '../../widgets/text.dart';
import 'package:trip_planner/utiles/strings.dart';

import '../../widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fromKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();

  // String get validationEmail =>
  //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

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
              padding: EdgeInsets.only(left: 25, right: 25, top: 40),
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
                              //    color: pinkClr,
                            ),
                      suffixIcon: Text(""),
                      labelText: 'enter email',
                      hintText: '',
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
                        prefixIcon: Icon(
                          Icons.lock,
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
                        labelText: 'Password',
                        hintText: '',
                      );
                    }),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                          onPressed: () {
                            //   Get.toNamed(Routes.forgetpasswordscreen);
                          },
                          child: TextWidget(
                              fontSize: 14,
                              text: "Forgot your password ?",
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              underLine: TextDecoration.underline)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GetBuilder<AuthController>(builder: (_) {
                      return AuthButton(
                        text: 'LOG IN',
                        onPressed: () {
                          if (fromKey.currentState!.validate()) {
                            String email = emailController.text.trim();
                            String password = passwordController.text;
                            controller.logInUsingFirebase(
                                email: email, password: password);
                          }
                        },
                        underLine: TextDecoration.none,
                        fontSize: 18,
                        FontWeight: FontWeight.bold,
                        color: Color.fromRGBO(228, 168, 78, 1),
                        textColor: Colors.white,
                      );
                    }),
                    SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                        fontSize: 14,
                        text: "OR",
                        color: Colors.red,
                        fontWeight: FontWeight.normal,
                        underLine: TextDecoration.none),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // GetBuilder<AuthController>(builder: (_) {
                        //   return InkWell(
                        //       onTap: () {
                        //         controller.googleSinUpApp();
                        //       },
                        //       child: Image.asset("assets/images/google.png")
                        //       );
                        // }),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          // Text("Don't have an account?"),
          // TextButton(onPressed: () {}, child: Text("Sign up")),
          //     Get.offNamed(Routes.loginScreen);
        ],
      ),
    ));
  }
}
//        Padding(
//         padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 300,
//               width: 400,
//               child: Container(child: Image.asset("assets/images/Star 1.png")),
//             ),
//             TextWidget(
//               color: Color.fromRGBO(228, 168, 78, 1),
//               fontSize: 15,
//               fontWeight: FontWeight.w600,
//               text: 'username',
//               underLine: TextDecoration.none,
//             ),
//             TextFieldWidget(
//               labelText: 'enter username or email',
//               obscureText: false,
//               prefixIcon: Icon(Icons.person),
//               suffixIcon: Text(""),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             TextWidget(
//               color: Color.fromRGBO(228, 168, 78, 1),
//               fontSize: 15,
//               fontWeight: FontWeight.w600,
//               text: 'password',
//               underLine: TextDecoration.none,
//             ),
//             TextFieldWidget(
//               labelText: 'enter password',
//               prefixIcon: Icon(Icons.person),
//               obscureText: true,
//               suffixIcon: Icon(Icons.visibility_off),
//             ),
//             TextWidget(
//               color: Colors.grey,
//               fontSize: 15,
//               fontWeight: FontWeight.w600,
//               text: 'Forgot your password ?',
//               underLine: TextDecoration.underline,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
