import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safi_shoes_admin/res/widget/app_button.dart';
import 'package:safi_shoes_admin/res/widget/app_text_field.dart';
import 'package:safi_shoes_admin/view/auth/sign_up_screen.dart';
import 'package:safi_shoes_admin/viewmodel/auth/auth_controller.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final login = Get.put(AuthenticationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  AppTextField(
                    labelText: "Email",
                    controller: login.loginEmail,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    labelText: "Password",
                    controller: login.loginPassword,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx((){
              return AppButton(
                title: "Login",
                loading: login.loading,
                onTap: (){
                  login.isLogin(context);
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
                  "Don't have any account?",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    "Sign up",
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
