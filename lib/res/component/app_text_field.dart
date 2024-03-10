import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  AppTextField({required this.labelText,this.controller,this.enabled = true,super.key});
  String labelText;
  TextEditingController? controller;
  bool enabled;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    if(MediaQuery.sizeOf(context).width > 500){
      return Container(
        height: size.height * 0.07,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: TextFormField(
          controller: controller,
          enabled: enabled,
          decoration: InputDecoration(
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              )
          ),
        ),
      );
    }else{
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: size.height * 0.07,
          width: size.width * 1,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                labelText: labelText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
            ),
          ),
        ),
      );
    }
  }
}
