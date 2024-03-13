import 'package:digital_attendance/provider/loading_button_provider.dart';
import 'package:digital_attendance/viewmodel/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../res/component/app_button.dart';
import '../../res/component/app_text_field.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final userName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

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
                    labelText: "User Name",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    labelText: "Email",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    labelText: "Password",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Consumer<LoadingButtonProvider>(
              builder: (context,value,chils){
                return AppButton(
                  title: "SIGNUP",
                  loading: value.loading,
                  onTap: (){
                    // AuthenticationController().signUp(
                    //   userName.text,
                    //   email.text,
                    //   password.text,
                    // );
                  },
                );
              },
            ),
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
