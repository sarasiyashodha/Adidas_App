import 'package:flutter/material.dart';

import '../custom_text/custom_poppins_text.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.size,
    required this.text,
    required this.bgColor,
    required this.onTap
  });

  final Size size;
  final String text;
  final Color bgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.width * 0.7,
          height: 45.0,
          decoration: BoxDecoration(
              color: Colors.orange.shade700,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
              child: CustomPoppinsText(text: text, color: Colors.white, fontSize: 15.0,)),
        ),
      ),
    );
  }
}

