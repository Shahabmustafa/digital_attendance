import 'package:digital_attendance/res/component/app_button.dart';
import 'package:digital_attendance/res/component/app_text_field.dart';
import 'package:digital_attendance/view/developer/developer_home_screen.dart';
import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Information"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextField(
            labelText: "User Name",
          ),
          SizedBox(
            height: 10,
          ),
          AppTextField(
            labelText: "Phone Number",
          ),
          SizedBox(
            height: 10,
          ),
          AppTextField(
            labelText: "Description",
          ),
          SizedBox(
            height: 10,
          ),
          AppButton(
            title: "Continue",
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DeveloperHomeScreen()));
            },
          )
        ],
      ),
    );
  }
}
