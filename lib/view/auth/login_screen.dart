import 'package:digital_attendance/provider/loading_button_provider.dart';
import 'package:digital_attendance/view/auth/information_screen.dart';
import 'package:digital_attendance/view/auth/sign_up_screen.dart';
import 'package:digital_attendance/viewmodel/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../res/component/app_button.dart';
import '../../res/component/app_text_field.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
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
              builder: (context,value,child){
                return AppButton(
                  title: "Login",
                  loading: value.loading,
                  onTap: (){
                    // AuthenticationController()
                    //     .login(
                    //   email.text.trim(),
                    //   password.text.trim(),
                    // );
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InformationScreen()));
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have any account?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: const Text(
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
