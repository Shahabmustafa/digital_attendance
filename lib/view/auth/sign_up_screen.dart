import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safi_shoes_admin/res/widget/app_button.dart';
import 'package:safi_shoes_admin/res/widget/app_text_field.dart';
import 'package:safi_shoes_admin/viewmodel/auth/auth_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final signUp = Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  AppTextField(
                    controller: signUp.signUpEmail,
                    labelText: "Email",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    controller: signUp.signUpPassword,
                    labelText: "Password",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx((){
              return AppButton(
                title: "SIGNUP",
                loading: signUp.loading,
                onTap: (){
                  signUp.isSignUp(context);
                },
              );
            }),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
