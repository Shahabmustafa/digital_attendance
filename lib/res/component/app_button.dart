import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({required this.title,this.loading = false,required this.onTap,super.key});
  String? title;
  bool loading;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return MediaQuery.sizeOf(context).width > 500 ?
    GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        child: loading ?
        Center(child: CircularProgressIndicator(color: Colors.white,)) :
        Center(child: Text(
          '$title',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        ),
      ),
    ) :
    GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: size.height * 0.07,
              width: size.width * 1,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: loading ?
              Center(child: CircularProgressIndicator()) :
              Center(child: Text(
                '$title',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ),
            ),
          ),
        );
  }
}
